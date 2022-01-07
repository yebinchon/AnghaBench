
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct cp_private {int dummy; } ;


 int CP_MAX_MTU ;
 int CP_MIN_MTU ;
 int EINVAL ;
 int cp_close (struct net_device*) ;
 int cp_open (struct net_device*) ;
 int cp_set_rxbufsize (struct cp_private*) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int cp_change_mtu(struct net_device *dev, int new_mtu)
{
 struct cp_private *cp = netdev_priv(dev);


 if (new_mtu < CP_MIN_MTU || new_mtu > CP_MAX_MTU)
  return -EINVAL;


 if (!netif_running(dev)) {
  dev->mtu = new_mtu;
  cp_set_rxbufsize(cp);
  return 0;
 }


 cp_close(dev);
 dev->mtu = new_mtu;
 cp_set_rxbufsize(cp);
 return cp_open(dev);
}
