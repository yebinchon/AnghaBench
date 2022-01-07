
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct atl1c_hw {scalar_t__ nic_type; int max_frame_size; } ;
struct atl1c_adapter {int flags; TYPE_2__* netdev; struct atl1c_hw hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int features; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int ETH_ZLEN ;
 int MAX_JUMBO_FRAME_SIZE ;
 int MAX_TSO_FRAME_SIZE ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int VLAN_HLEN ;
 int __AT_RESETTING ;
 scalar_t__ athr_l2c ;
 scalar_t__ athr_l2c_b ;
 scalar_t__ athr_l2c_b2 ;
 int atl1c_down (struct atl1c_adapter*) ;
 int atl1c_set_rxbufsize (struct atl1c_adapter*,struct net_device*) ;
 int atl1c_up (struct atl1c_adapter*) ;
 int clear_bit (int ,int *) ;
 int dev_warn (int *,char*) ;
 int msleep (int) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_link (struct atl1c_adapter*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int atl1c_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct atl1c_hw *hw = &adapter->hw;
 int old_mtu = netdev->mtu;
 int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;


 if (((hw->nic_type == athr_l2c ||
       hw->nic_type == athr_l2c_b ||
       hw->nic_type == athr_l2c_b2) && new_mtu > ETH_DATA_LEN) ||
       max_frame < ETH_ZLEN + ETH_FCS_LEN ||
       max_frame > MAX_JUMBO_FRAME_SIZE) {
  if (netif_msg_link(adapter))
   dev_warn(&adapter->pdev->dev, "invalid MTU setting\n");
  return -EINVAL;
 }

 if (old_mtu != new_mtu && netif_running(netdev)) {
  while (test_and_set_bit(__AT_RESETTING, &adapter->flags))
   msleep(1);
  netdev->mtu = new_mtu;
  adapter->hw.max_frame_size = new_mtu;
  atl1c_set_rxbufsize(adapter, netdev);
  if (new_mtu > MAX_TSO_FRAME_SIZE) {
   adapter->netdev->features &= ~NETIF_F_TSO;
   adapter->netdev->features &= ~NETIF_F_TSO6;
  } else {
   adapter->netdev->features |= NETIF_F_TSO;
   adapter->netdev->features |= NETIF_F_TSO6;
  }
  atl1c_down(adapter);
  atl1c_up(adapter);
  clear_bit(__AT_RESETTING, &adapter->flags);
 }
 return 0;
}
