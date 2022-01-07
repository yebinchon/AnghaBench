
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {scalar_t__ state; } ;
struct device {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ MDIOBUS_ALLOCATED ;
 scalar_t__ MDIOBUS_RELEASED ;
 int kfree (struct mii_bus*) ;
 struct mii_bus* to_mii_bus (struct device*) ;

__attribute__((used)) static void mdiobus_release(struct device *d)
{
 struct mii_bus *bus = to_mii_bus(d);
 BUG_ON(bus->state != MDIOBUS_RELEASED &&

        bus->state != MDIOBUS_ALLOCATED);
 kfree(bus);
}
