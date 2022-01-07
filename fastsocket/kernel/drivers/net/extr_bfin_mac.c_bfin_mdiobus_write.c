
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct mii_bus {int dummy; } ;


 int SET_PHYAD (scalar_t__) ;
 int SET_REGAD (scalar_t__) ;
 int STABUSY ;
 int STAOP ;
 int bfin_mdio_poll () ;
 int bfin_write_EMAC_STAADD (int) ;
 int bfin_write_EMAC_STADAT (int ) ;

__attribute__((used)) static int bfin_mdiobus_write(struct mii_bus *bus, int phy_addr, int regnum,
         u16 value)
{
 bfin_mdio_poll();

 bfin_write_EMAC_STADAT((u32) value);


 bfin_write_EMAC_STAADD(SET_PHYAD((u16) phy_addr) |
    SET_REGAD((u16) regnum) |
    STAOP |
    STABUSY);

 bfin_mdio_poll();

 return 0;
}
