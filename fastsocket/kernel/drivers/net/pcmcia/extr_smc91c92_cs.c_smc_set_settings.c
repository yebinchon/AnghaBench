
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct smc_private {int cfg; int lock; int mii_if; } ;
struct net_device {unsigned int base_addr; } ;
struct ethtool_cmd {int dummy; } ;


 scalar_t__ BANK_SELECT ;
 int CFG_MII_SELECT ;
 int SMC_SELECT_BANK (int) ;
 int inw (scalar_t__) ;
 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int smc_netdev_set_ecmd (struct net_device*,struct ethtool_cmd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int smc_set_settings(struct net_device *dev, struct ethtool_cmd *ecmd)
{
 struct smc_private *smc = netdev_priv(dev);
 unsigned int ioaddr = dev->base_addr;
 u16 saved_bank = inw(ioaddr + BANK_SELECT);
 int ret;

 spin_lock_irq(&smc->lock);
 SMC_SELECT_BANK(3);
 if (smc->cfg & CFG_MII_SELECT)
  ret = mii_ethtool_sset(&smc->mii_if, ecmd);
 else
  ret = smc_netdev_set_ecmd(dev, ecmd);
 SMC_SELECT_BANK(saved_bank);
 spin_unlock_irq(&smc->lock);
 return ret;
}
