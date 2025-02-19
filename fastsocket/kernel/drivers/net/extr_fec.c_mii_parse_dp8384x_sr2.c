
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {int phy_status; int link; } ;


 int volatile PHY_STAT_100FDX ;
 int volatile PHY_STAT_100HDX ;
 int volatile PHY_STAT_10FDX ;
 int volatile PHY_STAT_10HDX ;
 int volatile PHY_STAT_ANC ;
 int volatile PHY_STAT_FAULT ;
 int volatile PHY_STAT_LINK ;
 int volatile PHY_STAT_SPMASK ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mii_parse_dp8384x_sr2(uint mii_reg, struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 volatile uint *s = &(fep->phy_status);

 *s &= ~(PHY_STAT_SPMASK | PHY_STAT_LINK | PHY_STAT_ANC);


 if (mii_reg & 0x0001) {
  fep->link = 1;
  *s |= PHY_STAT_LINK;
 } else
  fep->link = 0;

 if (mii_reg & 0x0010)
  *s |= PHY_STAT_ANC;
 if (mii_reg & 0x0002) {
  if (mii_reg & 0x0004)
   *s |= PHY_STAT_10FDX;
  else
   *s |= PHY_STAT_10HDX;
 } else {
  if (mii_reg & 0x0004)
   *s |= PHY_STAT_100FDX;
  else
   *s |= PHY_STAT_100HDX;
 }
 if (mii_reg & 0x0008)
  *s |= PHY_STAT_FAULT;
}
