
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {scalar_t__ state; TYPE_1__** phy_map; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 scalar_t__ MDIOBUS_REGISTERED ;
 scalar_t__ MDIOBUS_UNREGISTERED ;
 int PHY_MAX_ADDR ;
 int device_del (int *) ;
 int device_unregister (int *) ;

void mdiobus_unregister(struct mii_bus *bus)
{
 int i;

 BUG_ON(bus->state != MDIOBUS_REGISTERED);
 bus->state = MDIOBUS_UNREGISTERED;

 device_del(&bus->dev);
 for (i = 0; i < PHY_MAX_ADDR; i++) {
  if (bus->phy_map[i])
   device_unregister(&bus->phy_map[i]->dev);
  bus->phy_map[i] = ((void*)0);
 }
}
