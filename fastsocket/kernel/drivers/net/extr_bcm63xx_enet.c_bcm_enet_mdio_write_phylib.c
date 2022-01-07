
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int priv; } ;


 int bcm_enet_mdio_write (int ,int,int,int ) ;

__attribute__((used)) static int bcm_enet_mdio_write_phylib(struct mii_bus *bus, int mii_id,
          int regnum, u16 value)
{
 return bcm_enet_mdio_write(bus->priv, mii_id, regnum, value);
}
