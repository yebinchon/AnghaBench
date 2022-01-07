
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks8851_net {int mii; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int ks8851_net_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 struct ks8851_net *ks = netdev_priv(dev);

 if (!netif_running(dev))
  return -EINVAL;

 return generic_mii_ioctl(&ks->mii, if_mii(req), cmd, ((void*)0));
}
