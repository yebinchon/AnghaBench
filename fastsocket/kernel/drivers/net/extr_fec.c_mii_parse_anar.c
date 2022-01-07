
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {int phy_status; } ;


 int PHY_CONF_100FDX ;
 int PHY_CONF_100HDX ;
 int PHY_CONF_10FDX ;
 int PHY_CONF_10HDX ;
 int volatile PHY_CONF_SPMASK ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mii_parse_anar(uint mii_reg, struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 volatile uint *s = &(fep->phy_status);
 uint status;

 status = *s & ~(PHY_CONF_SPMASK);

 if (mii_reg & 0x0020)
  status |= PHY_CONF_10HDX;
 if (mii_reg & 0x0040)
  status |= PHY_CONF_10FDX;
 if (mii_reg & 0x0080)
  status |= PHY_CONF_100HDX;
 if (mii_reg & 0x00100)
  status |= PHY_CONF_100FDX;
 *s = status;
}
