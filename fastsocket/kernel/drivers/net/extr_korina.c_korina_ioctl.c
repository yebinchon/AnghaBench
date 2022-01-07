
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct korina_private {int mii_if; int lock; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int korina_set_carrier (int *) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int korina_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct korina_private *lp = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(rq);
 int rc;

 if (!netif_running(dev))
  return -EINVAL;
 spin_lock_irq(&lp->lock);
 rc = generic_mii_ioctl(&lp->mii_if, data, cmd, ((void*)0));
 spin_unlock_irq(&lp->lock);
 korina_set_carrier(&lp->mii_if);

 return rc;
}
