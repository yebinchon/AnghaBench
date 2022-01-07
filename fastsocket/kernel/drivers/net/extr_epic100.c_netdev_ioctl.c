
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {long base_addr; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;
struct epic_private {int lock; int mii; } ;


 scalar_t__ GENCTL ;
 scalar_t__ NVCTL ;
 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int inl (scalar_t__) ;
 struct epic_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int outl (int,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int netdev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct epic_private *np = netdev_priv(dev);
 long ioaddr = dev->base_addr;
 struct mii_ioctl_data *data = if_mii(rq);
 int rc;


 if (! netif_running(dev)) {
  outl(0x0200, ioaddr + GENCTL);
  outl((inl(ioaddr + NVCTL) & ~0x003C) | 0x4800, ioaddr + NVCTL);
 }


 spin_lock_irq(&np->lock);
 rc = generic_mii_ioctl(&np->mii, data, cmd, ((void*)0));
 spin_unlock_irq(&np->lock);


 if (! netif_running(dev)) {
  outl(0x0008, ioaddr + GENCTL);
  outl((inl(ioaddr + NVCTL) & ~0x483C) | 0x0000, ioaddr + NVCTL);
 }
 return rc;
}
