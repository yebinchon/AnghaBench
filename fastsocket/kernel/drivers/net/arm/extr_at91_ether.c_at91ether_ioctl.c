
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct at91_private {int lock; int mii; } ;


 int EINVAL ;
 int disable_mdi () ;
 int enable_mdi () ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct at91_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int at91ether_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct at91_private *lp = netdev_priv(dev);
 int res;

 if (!netif_running(dev))
  return -EINVAL;

 spin_lock_irq(&lp->lock);
 enable_mdi();
 res = generic_mii_ioctl(&lp->mii, if_mii(rq), cmd, ((void*)0));
 disable_mdi();
 spin_unlock_irq(&lp->lock);

 return res;
}
