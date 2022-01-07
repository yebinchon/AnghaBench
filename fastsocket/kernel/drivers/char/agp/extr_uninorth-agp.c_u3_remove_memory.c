
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct agp_memory {scalar_t__ type; size_t page_count; } ;
typedef size_t off_t ;
struct TYPE_2__ {int * gatt_table; } ;


 int EINVAL ;
 TYPE_1__* agp_bridge ;
 int mb () ;
 int uninorth_tlbflush (struct agp_memory*) ;

int u3_remove_memory(struct agp_memory *mem, off_t pg_start, int type)
{
 size_t i;
 u32 *gp;

 if (type != 0 || mem->type != 0)

  return -EINVAL;

 gp = (u32 *) &agp_bridge->gatt_table[pg_start];
 for (i = 0; i < mem->page_count; ++i)
  gp[i] = 0;
 mb();
 uninorth_tlbflush(mem);

 return 0;
}
