
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipg_nic_private {int mii_mutex; int mii_if; } ;
struct ifreq {int dummy; } ;


 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipg_nic_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipg_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct ipg_nic_private *sp = netdev_priv(dev);
 int rc;

 mutex_lock(&sp->mii_mutex);
 rc = generic_mii_ioctl(&sp->mii_if, if_mii(ifr), cmd, ((void*)0));
 mutex_unlock(&sp->mii_mutex);

 return rc;
}
