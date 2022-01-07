
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int mtu; } ;
struct TYPE_7__ {int (* set_rar ) (struct ixgbe_hw*,int ,int ,int ) ;} ;
struct TYPE_8__ {scalar_t__ type; int get_link_status; int perm_addr; TYPE_3__ ops; int addr; } ;
struct ixgbe_hw {TYPE_4__ mac; } ;
struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; int watchdog_timer; int state; int mbx_lock; TYPE_2__* rx_ring; TYPE_1__* tx_ring; struct ixgbe_hw hw; struct net_device* netdev; } ;
struct TYPE_6__ {int reg_idx; } ;
struct TYPE_5__ {int reg_idx; } ;


 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_RXDCTL_RLPMLMASK ;
 int IXGBE_RXDCTL_RLPML_EN ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_VFRXDCTL (int) ;
 int IXGBE_VFTXDCTL (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int __IXGBEVF_DOWN ;
 int clear_bit (int ,int *) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 scalar_t__ ixgbe_mac_X540_vf ;
 int ixgbevf_configure_msix (struct ixgbevf_adapter*) ;
 int ixgbevf_init_last_counter_stats (struct ixgbevf_adapter*) ;
 int ixgbevf_napi_enable_all (struct ixgbevf_adapter*) ;
 int ixgbevf_rx_desc_queue_enable (struct ixgbevf_adapter*,int) ;
 int ixgbevf_save_reset_stats (struct ixgbevf_adapter*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int ) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int ) ;

__attribute__((used)) static void ixgbevf_up_complete(struct ixgbevf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 int i, j = 0;
 int num_rx_rings = adapter->num_rx_queues;
 u32 txdctl, rxdctl;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  j = adapter->tx_ring[i].reg_idx;
  txdctl = IXGBE_READ_REG(hw, IXGBE_VFTXDCTL(j));

  txdctl |= (8 << 16);
  IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(j), txdctl);
 }

 for (i = 0; i < adapter->num_tx_queues; i++) {
  j = adapter->tx_ring[i].reg_idx;
  txdctl = IXGBE_READ_REG(hw, IXGBE_VFTXDCTL(j));
  txdctl |= IXGBE_TXDCTL_ENABLE;
  IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(j), txdctl);
 }

 for (i = 0; i < num_rx_rings; i++) {
  j = adapter->rx_ring[i].reg_idx;
  rxdctl = IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(j));
  rxdctl |= IXGBE_RXDCTL_ENABLE;
  if (hw->mac.type == ixgbe_mac_X540_vf) {
   rxdctl &= ~IXGBE_RXDCTL_RLPMLMASK;
   rxdctl |= ((netdev->mtu + ETH_HLEN + ETH_FCS_LEN) |
       IXGBE_RXDCTL_RLPML_EN);
  }
  IXGBE_WRITE_REG(hw, IXGBE_VFRXDCTL(j), rxdctl);
  ixgbevf_rx_desc_queue_enable(adapter, i);
 }

 ixgbevf_configure_msix(adapter);

 spin_lock_bh(&adapter->mbx_lock);

 if (is_valid_ether_addr(hw->mac.addr))
  hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0);
 else
  hw->mac.ops.set_rar(hw, 0, hw->mac.perm_addr, 0);

 spin_unlock_bh(&adapter->mbx_lock);

 clear_bit(__IXGBEVF_DOWN, &adapter->state);
 ixgbevf_napi_enable_all(adapter);


 netif_tx_start_all_queues(netdev);

 ixgbevf_save_reset_stats(adapter);
 ixgbevf_init_last_counter_stats(adapter);

 hw->mac.get_link_status = 1;
 mod_timer(&adapter->watchdog_timer, jiffies);
}
