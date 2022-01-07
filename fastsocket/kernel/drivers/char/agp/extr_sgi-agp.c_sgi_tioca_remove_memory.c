
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct agp_memory {scalar_t__ type; size_t page_count; struct agp_bridge_data* bridge; } ;
struct agp_bridge_data {TYPE_1__* driver; scalar_t__ gatt_table; } ;
typedef size_t off_t ;
struct TYPE_2__ {int (* tlb_flush ) (struct agp_memory*) ;} ;


 int EINVAL ;
 int stub1 (struct agp_memory*) ;

__attribute__((used)) static int sgi_tioca_remove_memory(struct agp_memory *mem, off_t pg_start,
       int type)
{
 size_t i;
 struct agp_bridge_data *bridge;
 u64 *table;

 bridge = mem->bridge;
 if (!bridge)
  return -EINVAL;

 if (type != 0 || mem->type != 0) {
  return -EINVAL;
 }

 table = (u64 *)bridge->gatt_table;

 for (i = pg_start; i < (mem->page_count + pg_start); i++) {
  table[i] = 0;
 }

 bridge->driver->tlb_flush(mem);
 return 0;
}
