
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
 int volatile PHY_STAT_SPMASK ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mii_parse_lxt970_csr(uint mii_reg, struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 volatile uint *s = &(fep->phy_status);
 uint status;

 status = *s & ~(PHY_STAT_SPMASK);
 if (mii_reg & 0x0800) {
  if (mii_reg & 0x1000)
   status |= PHY_STAT_100FDX;
  else
   status |= PHY_STAT_100HDX;
 } else {
  if (mii_reg & 0x1000)
   status |= PHY_STAT_10FDX;
  else
   status |= PHY_STAT_10HDX;
 }
 *s = status;
}
