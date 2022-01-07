
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; int vf_rate_link_speed; TYPE_1__* vfinfo; int link_up; } ;
struct TYPE_2__ {int tx_rate; } ;


 int EINVAL ;
 int ixgbe_link_mbps (struct ixgbe_adapter*) ;
 int ixgbe_set_vf_rate_limit (struct ixgbe_adapter*,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

int ixgbe_ndo_set_vf_bw(struct net_device *netdev, int vf, int tx_rate)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 int link_speed;


 if (vf >= adapter->num_vfs)
  return -EINVAL;


 if (!adapter->link_up)
  return -EINVAL;


 link_speed = ixgbe_link_mbps(adapter);
 if (link_speed != 10000)
  return -EINVAL;


 if (tx_rate && ((tx_rate <= 10) || (tx_rate > link_speed)))
  return -EINVAL;


 adapter->vf_rate_link_speed = link_speed;
 adapter->vfinfo[vf].tx_rate = tx_rate;


 ixgbe_set_vf_rate_limit(adapter, vf);

 return 0;
}
