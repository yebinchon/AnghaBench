
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {int phy_status; } ;


 int volatile PHY_CONF_ANE ;
 int volatile PHY_CONF_LOOP ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mii_parse_cr(uint mii_reg, struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 volatile uint *s = &(fep->phy_status);
 uint status;

 status = *s & ~(PHY_CONF_ANE | PHY_CONF_LOOP);

 if (mii_reg & 0x1000)
  status |= PHY_CONF_ANE;
 if (mii_reg & 0x4000)
  status |= PHY_CONF_LOOP;
 *s = status;
}
