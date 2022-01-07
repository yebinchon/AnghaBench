
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {scalar_t__ state; int dev; } ;


 int BUG_ON (int) ;
 scalar_t__ MDIOBUS_ALLOCATED ;
 scalar_t__ MDIOBUS_RELEASED ;
 scalar_t__ MDIOBUS_UNREGISTERED ;
 int kfree (struct mii_bus*) ;
 int put_device (int *) ;

void mdiobus_free(struct mii_bus *bus)
{



 if (bus->state == MDIOBUS_ALLOCATED) {
  kfree(bus);
  return;
 }

 BUG_ON(bus->state != MDIOBUS_UNREGISTERED);
 bus->state = MDIOBUS_RELEASED;

 put_device(&bus->dev);
}
