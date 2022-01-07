
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_bridge_data {TYPE_2__* driver; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* masks; } ;
struct TYPE_3__ {int mask; } ;


 int I460_IO_PAGE_SHIFT ;

__attribute__((used)) static unsigned long i460_mask_memory (struct agp_bridge_data *bridge,
           dma_addr_t addr, int type)
{

 return bridge->driver->masks[0].mask
  | (((addr & ~((1 << I460_IO_PAGE_SHIFT) - 1)) & 0xfffff000) >> 12);
}
