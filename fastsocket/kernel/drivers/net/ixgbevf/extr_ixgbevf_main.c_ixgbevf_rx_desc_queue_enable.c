
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {TYPE_1__* rx_ring; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int reg_idx; scalar_t__ count; } ;


 int IXGBE_MAX_RX_DESC_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_VFRXDCTL (int) ;
 int hw_dbg (struct ixgbe_hw*,char*,int) ;
 int ixgbevf_release_rx_desc (struct ixgbe_hw*,TYPE_1__*,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static inline void ixgbevf_rx_desc_queue_enable(struct ixgbevf_adapter *adapter,
      int rxr)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int j = adapter->rx_ring[rxr].reg_idx;
 int k;

 for (k = 0; k < IXGBE_MAX_RX_DESC_POLL; k++) {
  if (IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(j)) & IXGBE_RXDCTL_ENABLE)
   break;
  else
   msleep(1);
 }
 if (k >= IXGBE_MAX_RX_DESC_POLL) {
  hw_dbg(hw, "RXDCTL.ENABLE on Rx queue %d "
         "not set within the polling period\n", rxr);
 }

 ixgbevf_release_rx_desc(hw, &adapter->rx_ring[rxr],
    adapter->rx_ring[rxr].count - 1);
}
