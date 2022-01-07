
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct agp_memory {int type; int page_count; int bridge; } ;
typedef int off_t ;
struct TYPE_6__ {TYPE_1__* driver; scalar_t__ gatt_table; int scratch_page; } ;
struct TYPE_5__ {scalar_t__ pg_offset; } ;
struct TYPE_4__ {int (* tlb_flush ) (struct agp_memory*) ;} ;


 int EINVAL ;
 TYPE_3__* agp_bridge ;
 int agp_generic_type_to_mask_type (int ,int) ;
 TYPE_2__ nvidia_private ;
 int stub1 (struct agp_memory*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int nvidia_remove_memory(struct agp_memory *mem, off_t pg_start, int type)
{
 int i;

 int mask_type;

 mask_type = agp_generic_type_to_mask_type(mem->bridge, type);
 if (mask_type != 0 || type != mem->type)
  return -EINVAL;

 if (mem->page_count == 0)
  return 0;

 for (i = pg_start; i < (mem->page_count + pg_start); i++)
  writel(agp_bridge->scratch_page, agp_bridge->gatt_table+nvidia_private.pg_offset+i);

 agp_bridge->driver->tlb_flush(mem);
 return 0;
}
