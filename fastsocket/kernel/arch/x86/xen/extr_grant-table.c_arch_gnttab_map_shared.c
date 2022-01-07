
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {struct grant_entry* addr; } ;
struct grant_entry {int dummy; } ;


 int BUG_ON (int ) ;
 unsigned long PAGE_SIZE ;
 int apply_to_page_range (int *,unsigned long,unsigned long,int ,unsigned long**) ;
 int init_mm ;
 int map_pte_fn ;
 struct vm_struct* xen_alloc_vm_area (unsigned long) ;

int arch_gnttab_map_shared(unsigned long *frames, unsigned long nr_gframes,
      unsigned long max_nr_gframes,
      struct grant_entry **__shared)
{
 int rc;
 struct grant_entry *shared = *__shared;

 if (shared == ((void*)0)) {
  struct vm_struct *area =
   xen_alloc_vm_area(PAGE_SIZE * max_nr_gframes);
  BUG_ON(area == ((void*)0));
  shared = area->addr;
  *__shared = shared;
 }

 rc = apply_to_page_range(&init_mm, (unsigned long)shared,
     PAGE_SIZE * nr_gframes,
     map_pte_fn, &frames);
 return rc;
}
