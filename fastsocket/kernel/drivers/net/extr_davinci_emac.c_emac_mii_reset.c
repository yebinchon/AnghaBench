
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int MDIO_CONTROL ;
 unsigned int MDIO_CONTROL_CLKDIV ;
 unsigned int MDIO_CONTROL_ENABLE ;
 int emac_bus_frequency ;
 int emac_mdio_write (int ,unsigned int) ;
 int mdio_max_freq ;

__attribute__((used)) static int emac_mii_reset(struct mii_bus *bus)
{
 unsigned int clk_div;
 int mdio_bus_freq = emac_bus_frequency;

 if (mdio_max_freq & mdio_bus_freq)
  clk_div = ((mdio_bus_freq / mdio_max_freq) - 1);
 else
  clk_div = 0xFF;

 clk_div &= MDIO_CONTROL_CLKDIV;


 emac_mdio_write(MDIO_CONTROL, (clk_div | MDIO_CONTROL_ENABLE));

 return 0;

}
