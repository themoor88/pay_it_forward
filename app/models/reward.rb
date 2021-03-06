class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :pledges

  def total_pledged
    pledges.count * amount
  end

  def sold_out?
    backer_limit <= pledges.count
  end
end
