
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct macvlan_dev {struct net_device* lowerdev; } ;


 int IFF_ALLMULTI ;
 int dev_set_allmulti (struct net_device*,int) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void macvlan_change_rx_flags(struct net_device *dev, int change)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;

 if (change & IFF_ALLMULTI)
  dev_set_allmulti(lowerdev, dev->flags & IFF_ALLMULTI ? 1 : -1);
}
