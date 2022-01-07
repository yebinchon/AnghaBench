
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int priv; } ;


 int AR7_RESET_BIT_MDIO ;
 int CPMAC_MDIO_CONTROL ;
 int MDIOC_CLKDIV (int) ;
 int MDIOC_ENABLE ;
 int ar7_cpmac_freq () ;
 int ar7_device_reset (int ) ;
 int cpmac_write (int ,int ,int) ;

__attribute__((used)) static int cpmac_mdio_reset(struct mii_bus *bus)
{
 ar7_device_reset(AR7_RESET_BIT_MDIO);
 cpmac_write(bus->priv, CPMAC_MDIO_CONTROL, MDIOC_ENABLE |
      MDIOC_CLKDIV(ar7_cpmac_freq() / 2200000 - 1));
 return 0;
}
