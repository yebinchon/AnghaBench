
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r6040_private {int mii_if; int lock; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int r6040_set_carrier (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int r6040_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct r6040_private *lp = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(rq);
 int rc;

 if (!netif_running(dev))
  return -EINVAL;
 spin_lock_irq(&lp->lock);
 rc = generic_mii_ioctl(&lp->mii_if, data, cmd, ((void*)0));
 spin_unlock_irq(&lp->lock);
 r6040_set_carrier(&lp->mii_if);
 return rc;
}
