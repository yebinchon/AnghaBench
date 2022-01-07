
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int mii_if; int lock; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int rhine_set_carrier (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int netdev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct rhine_private *rp = netdev_priv(dev);
 int rc;

 if (!netif_running(dev))
  return -EINVAL;

 spin_lock_irq(&rp->lock);
 rc = generic_mii_ioctl(&rp->mii_if, if_mii(rq), cmd, ((void*)0));
 spin_unlock_irq(&rp->lock);
 rhine_set_carrier(&rp->mii_if);

 return rc;
}
