
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ max_tx_queues; scalar_t__ max_rx_queues; int rx_pb_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_82598_RX_PB_SIZE ;
 scalar_t__ IXGBE_DCA_MAX_QUEUES_82598 ;
 int IXGBE_DCA_RXCTRL (scalar_t__) ;
 scalar_t__ IXGBE_DCA_RXCTRL_DATA_WRO_EN ;
 scalar_t__ IXGBE_DCA_RXCTRL_HEAD_WRO_EN ;
 int IXGBE_DCA_TXCTRL (scalar_t__) ;
 scalar_t__ IXGBE_DCA_TXCTRL_DESC_WRO_EN ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int ixgbe_set_pcie_completion_timeout (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_start_hw_generic (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_start_hw_82598(struct ixgbe_hw *hw)
{
 u32 regval;
 u32 i;
 s32 ret_val = 0;

 ret_val = ixgbe_start_hw_generic(hw);


 for (i = 0; ((i < hw->mac.max_tx_queues) &&
      (i < IXGBE_DCA_MAX_QUEUES_82598)); i++) {
  regval = IXGBE_READ_REG(hw, IXGBE_DCA_TXCTRL(i));
  regval &= ~IXGBE_DCA_TXCTRL_DESC_WRO_EN;
  IXGBE_WRITE_REG(hw, IXGBE_DCA_TXCTRL(i), regval);
 }

 for (i = 0; ((i < hw->mac.max_rx_queues) &&
      (i < IXGBE_DCA_MAX_QUEUES_82598)); i++) {
  regval = IXGBE_READ_REG(hw, IXGBE_DCA_RXCTRL(i));
  regval &= ~(IXGBE_DCA_RXCTRL_DATA_WRO_EN |
       IXGBE_DCA_RXCTRL_HEAD_WRO_EN);
  IXGBE_WRITE_REG(hw, IXGBE_DCA_RXCTRL(i), regval);
 }

 hw->mac.rx_pb_size = IXGBE_82598_RX_PB_SIZE;


 if (ret_val == 0)
  ixgbe_set_pcie_completion_timeout(hw);

 return ret_val;
}
