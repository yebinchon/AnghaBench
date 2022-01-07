
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ixgbe_hw_stats {int lxoffrxc; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_4__ {scalar_t__ current_mode; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_1__ fc; } ;
struct ixgbe_adapter {int num_tx_queues; TYPE_3__** tx_ring; struct ixgbe_hw_stats stats; struct ixgbe_hw hw; } ;
struct TYPE_6__ {int state; } ;


 int IXGBE_LXOFFRXC ;
 int IXGBE_LXOFFRXCNT ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int __IXGBE_HANG_CHECK_ARMED ;
 int clear_bit (int ,int *) ;
 scalar_t__ ixgbe_fc_full ;
 scalar_t__ ixgbe_fc_rx_pause ;


__attribute__((used)) static void ixgbe_update_xoff_rx_lfc(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_hw_stats *hwstats = &adapter->stats;
 int i;
 u32 data;

 if ((hw->fc.current_mode != ixgbe_fc_full) &&
     (hw->fc.current_mode != ixgbe_fc_rx_pause))
  return;

 switch (hw->mac.type) {
 case 128:
  data = IXGBE_READ_REG(hw, IXGBE_LXOFFRXC);
  break;
 default:
  data = IXGBE_READ_REG(hw, IXGBE_LXOFFRXCNT);
 }
 hwstats->lxoffrxc += data;


 if (!data)
  return;

 for (i = 0; i < adapter->num_tx_queues; i++)
  clear_bit(__IXGBE_HANG_CHECK_ARMED,
     &adapter->tx_ring[i]->state);
}
