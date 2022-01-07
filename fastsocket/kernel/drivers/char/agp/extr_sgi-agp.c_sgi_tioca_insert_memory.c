
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct agp_memory {int page_count; int is_flushed; int type; int * pages; struct agp_bridge_data* bridge; } ;
struct agp_bridge_data {TYPE_1__* driver; void* current_size; scalar_t__ gatt_table; } ;
typedef int off_t ;
struct TYPE_10__ {int num_entries; } ;
struct TYPE_9__ {int num_entries; } ;
struct TYPE_8__ {int num_entries; } ;
struct TYPE_7__ {int num_entries; } ;
struct TYPE_6__ {int size_type; int (* tlb_flush ) (struct agp_memory*) ;scalar_t__ (* mask_memory ) (struct agp_bridge_data*,int ,int ) ;int (* cache_flush ) () ;} ;


 TYPE_5__* A_SIZE_16 (void*) ;
 TYPE_4__* A_SIZE_32 (void*) ;
 TYPE_3__* A_SIZE_8 (void*) ;
 TYPE_2__* A_SIZE_FIX (void*) ;
 int EBUSY ;
 int EINVAL ;


 int PAGE_SIZE ;



 int agp_memory_reserved ;
 int page_to_phys (int ) ;
 int stub1 () ;
 scalar_t__ stub2 (struct agp_bridge_data*,int ,int ) ;
 int stub3 (struct agp_memory*) ;

__attribute__((used)) static int sgi_tioca_insert_memory(struct agp_memory *mem, off_t pg_start,
       int type)
{
 int num_entries;
 size_t i;
 off_t j;
 void *temp;
 struct agp_bridge_data *bridge;
 u64 *table;

 bridge = mem->bridge;
 if (!bridge)
  return -EINVAL;

 table = (u64 *)bridge->gatt_table;

 temp = bridge->current_size;

 switch (bridge->driver->size_type) {
 case 128:
  num_entries = A_SIZE_8(temp)->num_entries;
  break;
 case 130:
  num_entries = A_SIZE_16(temp)->num_entries;
  break;
 case 129:
  num_entries = A_SIZE_32(temp)->num_entries;
  break;
 case 132:
  num_entries = A_SIZE_FIX(temp)->num_entries;
  break;
 case 131:
  return -EINVAL;
  break;
 default:
  num_entries = 0;
  break;
 }

 num_entries -= agp_memory_reserved / PAGE_SIZE;
 if (num_entries < 0)
  num_entries = 0;

 if (type != 0 || mem->type != 0) {
  return -EINVAL;
 }

 if ((pg_start + mem->page_count) > num_entries)
  return -EINVAL;

 j = pg_start;

 while (j < (pg_start + mem->page_count)) {
  if (table[j])
   return -EBUSY;
  j++;
 }

 if (!mem->is_flushed) {
  bridge->driver->cache_flush();
  mem->is_flushed = 1;
 }

 for (i = 0, j = pg_start; i < mem->page_count; i++, j++) {
  table[j] =
      bridge->driver->mask_memory(bridge,
      page_to_phys(mem->pages[i]),
      mem->type);
 }

 bridge->driver->tlb_flush(mem);
 return 0;
}
