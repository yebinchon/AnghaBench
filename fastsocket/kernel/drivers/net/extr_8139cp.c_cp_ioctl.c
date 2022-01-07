
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct cp_private {int lock; int mii_if; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cp_ioctl (struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct cp_private *cp = netdev_priv(dev);
 int rc;
 unsigned long flags;

 if (!netif_running(dev))
  return -EINVAL;

 spin_lock_irqsave(&cp->lock, flags);
 rc = generic_mii_ioctl(&cp->mii_if, if_mii(rq), cmd, ((void*)0));
 spin_unlock_irqrestore(&cp->lock, flags);
 return rc;
}
