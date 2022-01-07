
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int (* disable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {int type; TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; } ;
struct ixgbe_adapter {int num_rx_queues; int flags2; int num_vfs; int num_tx_queues; int pdev; TYPE_2__** tx_ring; TYPE_1__* vfinfo; struct ixgbe_hw hw; int service_timer; int flags; int * rx_ring; int state; struct net_device* netdev; } ;
struct TYPE_6__ {int reg_idx; } ;
struct TYPE_5__ {int clear_to_send; } ;


 int IXGBE_DMATXCTL ;
 int IXGBE_DMATXCTL_TE ;
 int IXGBE_EITRSEL ;
 int IXGBE_FLAG2_FDIR_REQUIRES_REINIT ;
 int IXGBE_FLAG2_RESET_REQUESTED ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXCTRL ;
 int IXGBE_RXCTRL_RXEN ;
 int IXGBE_TXDCTL (int ) ;
 int IXGBE_TXDCTL_SWFLSH ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int __IXGBE_DOWN ;
 int del_timer_sync (int *) ;
 int ixgbe_clean_all_rx_rings (struct ixgbe_adapter*) ;
 int ixgbe_clean_all_tx_rings (struct ixgbe_adapter*) ;
 int ixgbe_disable_rx_queue (struct ixgbe_adapter*,int ) ;
 int ixgbe_disable_tx_rx (struct ixgbe_adapter*) ;
 int ixgbe_irq_disable (struct ixgbe_adapter*) ;


 int ixgbe_napi_disable_all (struct ixgbe_adapter*) ;
 int ixgbe_ping_all_vfs (struct ixgbe_adapter*) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;
 int ixgbe_setup_dca (struct ixgbe_adapter*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int pci_channel_offline (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct ixgbe_hw*) ;
 int usleep_range (int,int) ;

void ixgbe_down(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 rxctrl;
 int i;


 set_bit(__IXGBE_DOWN, &adapter->state);


 rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
 IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, rxctrl & ~IXGBE_RXCTRL_RXEN);


 for (i = 0; i < adapter->num_rx_queues; i++)

  ixgbe_disable_rx_queue(adapter, adapter->rx_ring[i]);

 usleep_range(10000, 20000);

 netif_tx_stop_all_queues(netdev);


 netif_carrier_off(netdev);
 netif_tx_disable(netdev);

 ixgbe_irq_disable(adapter);

 ixgbe_napi_disable_all(adapter);

 adapter->flags2 &= ~(IXGBE_FLAG2_FDIR_REQUIRES_REINIT |
        IXGBE_FLAG2_RESET_REQUESTED);
 adapter->flags &= ~IXGBE_FLAG_NEED_LINK_UPDATE;

 del_timer_sync(&adapter->service_timer);

 if (adapter->num_vfs) {

  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EITRSEL, 0);


  for (i = 0 ; i < adapter->num_vfs; i++)
   adapter->vfinfo[i].clear_to_send = 0;


  ixgbe_ping_all_vfs(adapter);


  ixgbe_disable_tx_rx(adapter);
 }


 for (i = 0; i < adapter->num_tx_queues; i++) {
  u8 reg_idx = adapter->tx_ring[i]->reg_idx;
  IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(reg_idx), IXGBE_TXDCTL_SWFLSH);
 }


 switch (hw->mac.type) {
 case 129:
 case 128:
  IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL,
    (IXGBE_READ_REG(hw, IXGBE_DMATXCTL) &
     ~IXGBE_DMATXCTL_TE));
  break;
 default:
  break;
 }

 if (!pci_channel_offline(adapter->pdev))
  ixgbe_reset(adapter);


 if (hw->mac.ops.disable_tx_laser)
  hw->mac.ops.disable_tx_laser(hw);

 ixgbe_clean_all_tx_rings(adapter);
 ixgbe_clean_all_rx_rings(adapter);





}
