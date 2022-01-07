
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int ETH_JUMBO_MTU ;
 int ETH_ZLEN ;
 int dev_close (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int skge_down (struct net_device*) ;
 int skge_up (struct net_device*) ;

__attribute__((used)) static int skge_change_mtu(struct net_device *dev, int new_mtu)
{
 int err;

 if (new_mtu < ETH_ZLEN || new_mtu > ETH_JUMBO_MTU)
  return -EINVAL;

 if (!netif_running(dev)) {
  dev->mtu = new_mtu;
  return 0;
 }

 skge_down(dev);

 dev->mtu = new_mtu;

 err = skge_up(dev);
 if (err)
  dev_close(dev);

 return err;
}
