class AddFeeSourceToOrders < ActiveRecord::Migration
  def change
    add_column(
      :orders,
      :fee_source,
      "ENUM('bid', 'utility') DEFAULT 'bid'",
      after: :fee
    )
  end
end
