
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_net {int mii; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct ks_net* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int ks_net_ioctl(struct net_device *netdev, struct ifreq *req, int cmd)
{
 struct ks_net *ks = netdev_priv(netdev);

 if (!netif_running(netdev))
  return -EINVAL;

 return generic_mii_ioctl(&ks->mii, if_mii(req), cmd, ((void*)0));
}
