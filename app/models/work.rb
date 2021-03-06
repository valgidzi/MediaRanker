class Work < ApplicationRecord
  include Enumerable
  validates :category, presence: true
  validates :title, presence: true
  validates :creator, presence: true
  validates :publication_year, numericality: { only_integer: true }
  has_many :votes, dependent: :nullify
  has_many :upvoted_users, through: :votes, source: :user

end
