
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int dummy; } ;


 int SET_PHYAD (int ) ;
 int SET_REGAD (int ) ;
 int STABUSY ;
 int bfin_mdio_poll () ;
 scalar_t__ bfin_read_EMAC_STADAT () ;
 int bfin_write_EMAC_STAADD (int) ;

__attribute__((used)) static int bfin_mdiobus_read(struct mii_bus *bus, int phy_addr, int regnum)
{
 bfin_mdio_poll();


 bfin_write_EMAC_STAADD(SET_PHYAD((u16) phy_addr) |
    SET_REGAD((u16) regnum) |
    STABUSY);

 bfin_mdio_poll();

 return (int) bfin_read_EMAC_STADAT();
}
