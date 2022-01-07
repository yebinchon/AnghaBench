
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc911x_local {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned int BMCR_PDOWN ;
 int SMC_GET_PHY_BMCR (struct smc911x_local*,int,unsigned int) ;
 int SMC_SET_PHY_BMCR (struct smc911x_local*,int,unsigned int) ;
 struct smc911x_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void smc911x_phy_powerdown(struct net_device *dev, int phy)
{
 struct smc911x_local *lp = netdev_priv(dev);
 unsigned int bmcr;


 SMC_GET_PHY_BMCR(lp, phy, bmcr);
 bmcr |= BMCR_PDOWN;
 SMC_SET_PHY_BMCR(lp, phy, bmcr);
}
