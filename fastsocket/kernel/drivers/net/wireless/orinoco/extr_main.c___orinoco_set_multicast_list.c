
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int dummy; } ;
struct net_device {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAX_MULTICAST (struct orinoco_private*) ;
 int __orinoco_hw_set_multicast_list (struct orinoco_private*,struct net_device*,int,int) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 int netdev_mc_count (struct net_device*) ;

__attribute__((used)) static int
__orinoco_set_multicast_list(struct net_device *dev)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int err = 0;
 int promisc, mc_count;



 if ((dev->flags & IFF_PROMISC) || (dev->flags & IFF_ALLMULTI) ||
     (netdev_mc_count(dev) > MAX_MULTICAST(priv))) {
  promisc = 1;
  mc_count = 0;
 } else {
  promisc = 0;
  mc_count = netdev_mc_count(dev);
 }

 err = __orinoco_hw_set_multicast_list(priv, dev, mc_count, promisc);

 return err;
}
