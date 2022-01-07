
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_memory {int page_count; int type; struct agp_bridge_data* bridge; } ;
struct agp_bridge_data {TYPE_1__* driver; scalar_t__ gatt_table; int scratch_page; } ;
typedef int off_t ;
struct TYPE_2__ {int (* agp_type_to_mask_type ) (struct agp_bridge_data*,int) ;int (* tlb_flush ) (struct agp_memory*) ;} ;


 int EINVAL ;
 int agp_num_entries () ;
 int readl (scalar_t__) ;
 int stub1 (struct agp_bridge_data*,int) ;
 int stub2 (struct agp_memory*) ;
 int writel (int ,scalar_t__) ;

int agp_generic_remove_memory(struct agp_memory *mem, off_t pg_start, int type)
{
 size_t i;
 struct agp_bridge_data *bridge;
 int mask_type, num_entries;

 bridge = mem->bridge;
 if (!bridge)
  return -EINVAL;

 if (mem->page_count == 0)
  return 0;

 if (type != mem->type)
  return -EINVAL;

 num_entries = agp_num_entries();
 if (((pg_start + mem->page_count) > num_entries) ||
     ((pg_start + mem->page_count) < pg_start))
  return -EINVAL;

 mask_type = bridge->driver->agp_type_to_mask_type(bridge, type);
 if (mask_type != 0) {

  return -EINVAL;
 }


 for (i = pg_start; i < (mem->page_count + pg_start); i++) {
  writel(bridge->scratch_page, bridge->gatt_table+i);
 }
 readl(bridge->gatt_table+i-1);

 bridge->driver->tlb_flush(mem);
 return 0;
}
