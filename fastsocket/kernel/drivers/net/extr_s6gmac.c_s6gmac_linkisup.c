
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int giga; int mbit; int isup; int full; } ;
struct s6gmac {TYPE_1__ link; struct phy_device* phydev; } ;
struct phy_device {int speed; int duplex; } ;
struct net_device {int dummy; } ;


 struct s6gmac* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int s6gmac_set_rgmii_txclock (struct s6gmac*) ;

__attribute__((used)) static inline void s6gmac_linkisup(struct net_device *dev, int isup)
{
 struct s6gmac *pd = netdev_priv(dev);
 struct phy_device *phydev = pd->phydev;

 pd->link.full = phydev->duplex;
 pd->link.giga = (phydev->speed == 1000);
 if (pd->link.mbit != phydev->speed) {
  pd->link.mbit = phydev->speed;
  s6gmac_set_rgmii_txclock(pd);
 }
 pd->link.isup = isup;
 if (isup)
  netif_carrier_on(dev);
 phy_print_status(phydev);
}
