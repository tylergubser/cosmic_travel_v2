class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet
  validates :planet, presence: true
  validates :name, presence: true
  validates :scientist, presence: true, uniqueness: { scope: :name }
end
