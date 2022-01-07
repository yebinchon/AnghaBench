
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_bridge_data {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* chipset_flush ) (struct agp_bridge_data*) ;} ;


 int stub1 (struct agp_bridge_data*) ;

void agp_flush_chipset(struct agp_bridge_data *bridge)
{
 if (bridge->driver->chipset_flush)
  bridge->driver->chipset_flush(bridge);
}
