
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdio_bus ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;

__attribute__((used)) static void ixp4xx_mdio_remove(void)
{
 mdiobus_unregister(mdio_bus);
 mdiobus_free(mdio_bus);
}
