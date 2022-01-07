
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int num_q_vectors; int pdev; scalar_t__ link_duplex; scalar_t__ link_speed; int phy_info_timer; int watchdog_timer; TYPE_1__** q_vector; int flags; int state; struct e1000_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int napi; } ;


 int E1000_RCTL ;
 int E1000_RCTL_EN ;
 int E1000_TCTL ;
 int E1000_TCTL_EN ;
 int IGB_FLAG_NEED_LINK_UPDATE ;
 int __IGB_DOWN ;
 int del_timer_sync (int *) ;
 int igb_clean_all_rx_rings (struct igb_adapter*) ;
 int igb_clean_all_tx_rings (struct igb_adapter*) ;
 int igb_irq_disable (struct igb_adapter*) ;
 int igb_reset (struct igb_adapter*) ;
 int igb_setup_dca (struct igb_adapter*) ;
 int igb_update_stats (struct igb_adapter*) ;
 int msleep (int) ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int pci_channel_offline (int ) ;
 int rd32 (int ) ;
 int set_bit (int ,int *) ;
 int wr32 (int ,int) ;
 int wrfl () ;

void igb_down(struct igb_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 u32 tctl, rctl;
 int i;




 set_bit(__IGB_DOWN, &adapter->state);


 rctl = rd32(E1000_RCTL);
 wr32(E1000_RCTL, rctl & ~E1000_RCTL_EN);


 netif_tx_stop_all_queues(netdev);


 tctl = rd32(E1000_TCTL);
 tctl &= ~E1000_TCTL_EN;
 wr32(E1000_TCTL, tctl);

 wrfl();
 msleep(10);

 igb_irq_disable(adapter);

 adapter->flags &= ~IGB_FLAG_NEED_LINK_UPDATE;

 for (i = 0; i < adapter->num_q_vectors; i++) {
  napi_synchronize(&(adapter->q_vector[i]->napi));
  napi_disable(&(adapter->q_vector[i]->napi));
 }


 del_timer_sync(&adapter->watchdog_timer);
 del_timer_sync(&adapter->phy_info_timer);

 netif_carrier_off(netdev);


 igb_update_stats(adapter);

 adapter->link_speed = 0;
 adapter->link_duplex = 0;

 if (!pci_channel_offline(adapter->pdev))
  igb_reset(adapter);
 igb_clean_all_tx_rings(adapter);
 igb_clean_all_rx_rings(adapter);





}
