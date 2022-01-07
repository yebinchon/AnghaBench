
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {struct mdiobb_ctrl* priv; int write; int read; } ;
struct mdiobb_ctrl {TYPE_1__* ops; } ;
struct TYPE_2__ {int owner; } ;


 int __module_get (int ) ;
 int mdiobb_read ;
 int mdiobb_write ;
 struct mii_bus* mdiobus_alloc () ;

struct mii_bus *alloc_mdio_bitbang(struct mdiobb_ctrl *ctrl)
{
 struct mii_bus *bus;

 bus = mdiobus_alloc();
 if (!bus)
  return ((void*)0);

 __module_get(ctrl->ops->owner);

 bus->read = mdiobb_read;
 bus->write = mdiobb_write;
 bus->priv = ctrl;

 return bus;
}
