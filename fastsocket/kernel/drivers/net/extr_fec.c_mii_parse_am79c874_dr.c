
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {int phy_status; } ;


 int PHY_STAT_100FDX ;
 int PHY_STAT_100HDX ;
 int PHY_STAT_10FDX ;
 int PHY_STAT_10HDX ;
 int volatile PHY_STAT_ANC ;
 int volatile PHY_STAT_SPMASK ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mii_parse_am79c874_dr(uint mii_reg, struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 volatile uint *s = &(fep->phy_status);
 uint status;

 status = *s & ~(PHY_STAT_SPMASK | PHY_STAT_ANC);

 if (mii_reg & 0x0080)
  status |= PHY_STAT_ANC;
 if (mii_reg & 0x0400)
  status |= ((mii_reg & 0x0800) ? PHY_STAT_100FDX : PHY_STAT_100HDX);
 else
  status |= ((mii_reg & 0x0800) ? PHY_STAT_10FDX : PHY_STAT_10HDX);

 *s = status;
}
