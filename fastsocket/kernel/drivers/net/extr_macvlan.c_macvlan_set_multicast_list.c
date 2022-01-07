
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_dev {int lowerdev; } ;


 int dev_mc_sync (int ,struct net_device*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void macvlan_set_multicast_list(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 dev_mc_sync(vlan->lowerdev, dev);
}
