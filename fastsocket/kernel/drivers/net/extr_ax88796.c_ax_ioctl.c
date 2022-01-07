
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct ax_device {int mii_lock; int mii; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static int ax_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 struct ax_device *ax = to_ax_dev(dev);
 unsigned long flags;
 int rc;

 if (!netif_running(dev))
  return -EINVAL;

 spin_lock_irqsave(&ax->mii_lock, flags);
 rc = generic_mii_ioctl(&ax->mii, if_mii(req), cmd, ((void*)0));
 spin_unlock_irqrestore(&ax->mii_lock, flags);

 return rc;
}
