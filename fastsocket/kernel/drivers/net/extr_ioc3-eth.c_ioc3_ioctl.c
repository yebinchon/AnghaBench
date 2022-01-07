
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {int ioc3_lock; int mii; } ;
struct ifreq {int dummy; } ;


 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ioc3_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct ioc3_private *ip = netdev_priv(dev);
 int rc;

 spin_lock_irq(&ip->ioc3_lock);
 rc = generic_mii_ioctl(&ip->mii, if_mii(rq), cmd, ((void*)0));
 spin_unlock_irq(&ip->ioc3_lock);

 return rc;
}
