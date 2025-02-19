
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_4__ {int max_frame_size; int rx_jumbo_th; } ;
struct atl1e_adapter {int flags; TYPE_2__ hw; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int ETH_ZLEN ;
 int MAX_JUMBO_FRAME_SIZE ;
 int VLAN_HLEN ;
 int __AT_RESETTING ;
 int atl1e_down (struct atl1e_adapter*) ;
 int atl1e_up (struct atl1e_adapter*) ;
 int clear_bit (int ,int *) ;
 int dev_warn (int *,char*) ;
 int msleep (int) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int atl1e_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);
 int old_mtu = netdev->mtu;
 int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;

 if ((max_frame < ETH_ZLEN + ETH_FCS_LEN) ||
   (max_frame > MAX_JUMBO_FRAME_SIZE)) {
  dev_warn(&adapter->pdev->dev, "invalid MTU setting\n");
  return -EINVAL;
 }

 if (old_mtu != new_mtu && netif_running(netdev)) {
  while (test_and_set_bit(__AT_RESETTING, &adapter->flags))
   msleep(1);
  netdev->mtu = new_mtu;
  adapter->hw.max_frame_size = new_mtu;
  adapter->hw.rx_jumbo_th = (max_frame + 7) >> 3;
  atl1e_down(adapter);
  atl1e_up(adapter);
  clear_bit(__AT_RESETTING, &adapter->flags);
 }
 return 0;
}
