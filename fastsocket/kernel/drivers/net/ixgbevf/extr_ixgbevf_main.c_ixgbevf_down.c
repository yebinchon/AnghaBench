
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int flags; int num_tx_queues; int pdev; TYPE_1__* tx_ring; int watchdog_timer; int state; struct ixgbe_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int reg_idx; } ;


 int IXGBE_FLAG_IN_WATCHDOG_TASK ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_VFTXDCTL (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int __IXGBEVF_DOWN ;
 int del_timer_sync (int *) ;
 int ixgbevf_clean_all_rx_rings (struct ixgbevf_adapter*) ;
 int ixgbevf_clean_all_tx_rings (struct ixgbevf_adapter*) ;
 int ixgbevf_irq_disable (struct ixgbevf_adapter*) ;
 int ixgbevf_napi_disable_all (struct ixgbevf_adapter*) ;
 int ixgbevf_reset (struct ixgbevf_adapter*) ;
 int msleep (int) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int pci_channel_offline (int ) ;
 int set_bit (int ,int *) ;

void ixgbevf_down(struct ixgbevf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 txdctl;
 int i, j;


 set_bit(__IXGBEVF_DOWN, &adapter->state);


 netif_tx_disable(netdev);

 msleep(10);

 netif_tx_stop_all_queues(netdev);

 ixgbevf_irq_disable(adapter);

 ixgbevf_napi_disable_all(adapter);

 del_timer_sync(&adapter->watchdog_timer);



 while (adapter->flags & IXGBE_FLAG_IN_WATCHDOG_TASK)
  msleep(1);


 for (i = 0; i < adapter->num_tx_queues; i++) {
  j = adapter->tx_ring[i].reg_idx;
  txdctl = IXGBE_READ_REG(hw, IXGBE_VFTXDCTL(j));
  IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(j),
    (txdctl & ~IXGBE_TXDCTL_ENABLE));
 }

 netif_carrier_off(netdev);

 if (!pci_channel_offline(adapter->pdev))
  ixgbevf_reset(adapter);

 ixgbevf_clean_all_tx_rings(adapter);
 ixgbevf_clean_all_rx_rings(adapter);
}
