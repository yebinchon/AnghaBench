
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; TYPE_1__ hw; } ;


 int EINVAL ;
 int ETH_FCS_LEN ;
 int ETH_FRAME_LEN ;
 int ETH_HLEN ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_MAX_JUMBO_FRAME_SIZE ;
 int e_info (int ,char*,int,int) ;
 int e_warn (int ,char*) ;
 scalar_t__ ixgbe_mac_82599EB ;
 int ixgbe_reinit_locked (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int probe ;

__attribute__((used)) static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN;


 if ((new_mtu < 68) || (max_frame > IXGBE_MAX_JUMBO_FRAME_SIZE))
  return -EINVAL;






 if ((adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) &&
     (adapter->hw.mac.type == ixgbe_mac_82599EB) &&
     (max_frame > (ETH_FRAME_LEN + ETH_FCS_LEN)))
  e_warn(probe, "Setting MTU > 1500 will disable legacy VFs\n");

 e_info(probe, "changing MTU from %d to %d\n", netdev->mtu, new_mtu);


 netdev->mtu = new_mtu;

 if (netif_running(netdev))
  ixgbe_reinit_locked(adapter);

 return 0;
}
