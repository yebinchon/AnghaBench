
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_memory {int type; size_t page_count; scalar_t__ num_scratch_pages; } ;
struct TYPE_2__ {size_t num_dcache_entries; } ;


 int AGP_DCACHE_MEMORY ;
 int AGP_PHYS_MEMORY ;
 int INTEL_GTT_GEN ;
 struct agp_memory* agp_create_memory (int) ;
 int agp_free_page_array (struct agp_memory*) ;
 struct agp_memory* alloc_agpphysmem_i8xx (size_t,int) ;
 TYPE_1__ intel_private ;

__attribute__((used)) static struct agp_memory *intel_fake_agp_alloc_by_type(size_t pg_count,
             int type)
{
 struct agp_memory *new;

 if (type == AGP_DCACHE_MEMORY && INTEL_GTT_GEN == 1) {
  if (pg_count != intel_private.num_dcache_entries)
   return ((void*)0);

  new = agp_create_memory(1);
  if (new == ((void*)0))
   return ((void*)0);

  new->type = AGP_DCACHE_MEMORY;
  new->page_count = pg_count;
  new->num_scratch_pages = 0;
  agp_free_page_array(new);
  return new;
 }
 if (type == AGP_PHYS_MEMORY)
  return alloc_agpphysmem_i8xx(pg_count, type);

 return ((void*)0);
}
