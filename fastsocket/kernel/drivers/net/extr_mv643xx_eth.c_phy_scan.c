
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct mv643xx_eth_private {TYPE_1__* shared; } ;
struct mii_bus {struct phy_device** phy_map; } ;
struct TYPE_4__ {struct mii_bus* smi_bus; } ;
struct TYPE_3__ {TYPE_2__* smi; } ;


 int MV643XX_ETH_PHY_ADDR_DEFAULT ;
 int mdiobus_scan (struct mii_bus*,int) ;
 int phy_addr_get (struct mv643xx_eth_private*) ;
 int phy_addr_set (struct mv643xx_eth_private*,int) ;

__attribute__((used)) static struct phy_device *phy_scan(struct mv643xx_eth_private *mp,
       int phy_addr)
{
 struct mii_bus *bus = mp->shared->smi->smi_bus;
 struct phy_device *phydev;
 int start;
 int num;
 int i;

 if (phy_addr == MV643XX_ETH_PHY_ADDR_DEFAULT) {
  start = phy_addr_get(mp) & 0x1f;
  num = 32;
 } else {
  start = phy_addr & 0x1f;
  num = 1;
 }

 phydev = ((void*)0);
 for (i = 0; i < num; i++) {
  int addr = (start + i) & 0x1f;

  if (bus->phy_map[addr] == ((void*)0))
   mdiobus_scan(bus, addr);

  if (phydev == ((void*)0)) {
   phydev = bus->phy_map[addr];
   if (phydev != ((void*)0))
    phy_addr_set(mp, addr);
  }
 }

 return phydev;
}
