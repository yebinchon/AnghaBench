
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_bridge_data {TYPE_2__* driver; } ;
typedef unsigned long dma_addr_t ;
struct TYPE_4__ {TYPE_1__* masks; } ;
struct TYPE_3__ {unsigned long mask; } ;



unsigned long agp_generic_mask_memory(struct agp_bridge_data *bridge,
          dma_addr_t addr, int type)
{

 if (bridge->driver->masks)
  return addr | bridge->driver->masks[0].mask;
 else
  return addr;
}
