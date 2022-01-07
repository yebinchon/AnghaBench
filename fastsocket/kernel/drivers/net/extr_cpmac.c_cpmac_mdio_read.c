
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int priv; } ;


 int CPMAC_MDIO_ACCESS (int ) ;
 int MDIO_BUSY ;
 int MDIO_DATA (int) ;
 int MDIO_PHY (int) ;
 int MDIO_REG (int) ;
 int cpmac_read (int ,int ) ;
 int cpmac_write (int ,int ,int) ;
 int cpu_relax () ;

__attribute__((used)) static int cpmac_mdio_read(struct mii_bus *bus, int phy_id, int reg)
{
 u32 val;

 while (cpmac_read(bus->priv, CPMAC_MDIO_ACCESS(0)) & MDIO_BUSY)
  cpu_relax();
 cpmac_write(bus->priv, CPMAC_MDIO_ACCESS(0), MDIO_BUSY | MDIO_REG(reg) |
      MDIO_PHY(phy_id));
 while ((val = cpmac_read(bus->priv, CPMAC_MDIO_ACCESS(0))) & MDIO_BUSY)
  cpu_relax();
 return MDIO_DATA(val);
}
