
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int state; } ;


 int GFP_KERNEL ;
 int MDIOBUS_ALLOCATED ;
 struct mii_bus* kzalloc (int,int ) ;

struct mii_bus *mdiobus_alloc(void)
{
 struct mii_bus *bus;

 bus = kzalloc(sizeof(*bus), GFP_KERNEL);
 if (bus != ((void*)0))
  bus->state = MDIOBUS_ALLOCATED;

 return bus;
}
