
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct smc_private {int lock; int mii_if; } ;
struct net_device {unsigned int base_addr; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;


 scalar_t__ BANK_SELECT ;
 int EINVAL ;
 int SMC_SELECT_BANK (int) ;
 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int inw (scalar_t__) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int smc_ioctl (struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct smc_private *smc = netdev_priv(dev);
 struct mii_ioctl_data *mii = if_mii(rq);
 int rc = 0;
 u16 saved_bank;
 unsigned int ioaddr = dev->base_addr;

 if (!netif_running(dev))
  return -EINVAL;

 spin_lock_irq(&smc->lock);
 saved_bank = inw(ioaddr + BANK_SELECT);
 SMC_SELECT_BANK(3);
 rc = generic_mii_ioctl(&smc->mii_if, mii, cmd, ((void*)0));
 SMC_SELECT_BANK(saved_bank);
 spin_unlock_irq(&smc->lock);
 return rc;
}
