
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EBUSY ;
 int compute_hw_mtu (int ,int) ;
 int netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bcm_enet_change_mtu(struct net_device *dev, int new_mtu)
{
 int ret;

 if (netif_running(dev))
  return -EBUSY;

 ret = compute_hw_mtu(netdev_priv(dev), new_mtu);
 if (ret)
  return ret;
 dev->mtu = new_mtu;
 return 0;
}
