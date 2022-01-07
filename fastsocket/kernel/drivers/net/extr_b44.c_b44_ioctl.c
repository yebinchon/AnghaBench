
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;
struct b44 {int lock; int mii_if; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *data = if_mii(ifr);
 struct b44 *bp = netdev_priv(dev);
 int err = -EINVAL;

 if (!netif_running(dev))
  goto out;

 spin_lock_irq(&bp->lock);
 err = generic_mii_ioctl(&bp->mii_if, data, cmd, ((void*)0));
 spin_unlock_irq(&bp->lock);
out:
 return err;
}
