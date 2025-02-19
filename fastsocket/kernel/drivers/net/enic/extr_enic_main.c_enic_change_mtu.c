
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct enic {scalar_t__ port_mtu; } ;


 int EINVAL ;
 int ENIC_MAX_MTU ;
 int ENIC_MIN_MTU ;
 int EOPNOTSUPP ;
 scalar_t__ enic_is_dynamic (struct enic*) ;
 scalar_t__ enic_is_sriov_vf (struct enic*) ;
 int enic_open (struct net_device*) ;
 int enic_stop (struct net_device*) ;
 struct enic* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,scalar_t__,scalar_t__) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int enic_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct enic *enic = netdev_priv(netdev);
 int running = netif_running(netdev);

 if (new_mtu < ENIC_MIN_MTU || new_mtu > ENIC_MAX_MTU)
  return -EINVAL;

 if (enic_is_dynamic(enic) || enic_is_sriov_vf(enic))
  return -EOPNOTSUPP;

 if (running)
  enic_stop(netdev);

 netdev->mtu = new_mtu;

 if (netdev->mtu > enic->port_mtu)
  netdev_warn(netdev,
   "interface MTU (%d) set higher than port MTU (%d)\n",
   netdev->mtu, enic->port_mtu);

 if (running)
  enic_open(netdev);

 return 0;
}
