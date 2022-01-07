
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_private {int cfg; int mii_if; } ;
struct net_device {unsigned int base_addr; } ;


 int CFG_MII_SELECT ;
 scalar_t__ EPH ;
 int EPH_LINK_OK ;
 int SMC_SELECT_BANK (int ) ;
 int inw (scalar_t__) ;
 int mii_link_ok (int *) ;
 struct smc_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int smc_link_ok(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    struct smc_private *smc = netdev_priv(dev);

    if (smc->cfg & CFG_MII_SELECT) {
 return mii_link_ok(&smc->mii_if);
    } else {
        SMC_SELECT_BANK(0);
 return inw(ioaddr + EPH) & EPH_LINK_OK;
    }
}
