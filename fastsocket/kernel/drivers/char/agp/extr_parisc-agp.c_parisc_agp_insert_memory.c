
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct agp_memory {scalar_t__ type; int page_count; int is_flushed; int * pages; } ;
struct _parisc_agp_info {int io_pages_per_kpage; int gatt_entries; scalar_t__* gatt; scalar_t__ io_page_size; } ;
typedef int off_t ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int (* tlb_flush ) (struct agp_memory*) ;} ;


 int EBUSY ;
 int EINVAL ;
 TYPE_2__* agp_bridge ;
 int global_cache_flush () ;
 unsigned long page_to_phys (int ) ;
 struct _parisc_agp_info parisc_agp_info ;
 scalar_t__ parisc_agp_mask_memory (TYPE_2__*,unsigned long,int) ;
 int stub1 (struct agp_memory*) ;

__attribute__((used)) static int
parisc_agp_insert_memory(struct agp_memory *mem, off_t pg_start, int type)
{
 struct _parisc_agp_info *info = &parisc_agp_info;
 int i, k;
 off_t j, io_pg_start;
 int io_pg_count;

 if (type != 0 || mem->type != 0) {
  return -EINVAL;
 }

 io_pg_start = info->io_pages_per_kpage * pg_start;
 io_pg_count = info->io_pages_per_kpage * mem->page_count;
 if ((io_pg_start + io_pg_count) > info->gatt_entries) {
  return -EINVAL;
 }

 j = io_pg_start;
 while (j < (io_pg_start + io_pg_count)) {
  if (info->gatt[j])
   return -EBUSY;
  j++;
 }

 if (!mem->is_flushed) {
  global_cache_flush();
  mem->is_flushed = 1;
 }

 for (i = 0, j = io_pg_start; i < mem->page_count; i++) {
  unsigned long paddr;

  paddr = page_to_phys(mem->pages[i]);
  for (k = 0;
       k < info->io_pages_per_kpage;
       k++, j++, paddr += info->io_page_size) {
   info->gatt[j] =
    parisc_agp_mask_memory(agp_bridge,
     paddr, type);
  }
 }

 agp_bridge->driver->tlb_flush(mem);

 return 0;
}
