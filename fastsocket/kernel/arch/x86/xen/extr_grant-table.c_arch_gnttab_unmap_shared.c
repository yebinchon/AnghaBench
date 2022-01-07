
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grant_entry {int dummy; } ;


 unsigned long PAGE_SIZE ;
 int apply_to_page_range (int *,unsigned long,unsigned long,int ,int *) ;
 int init_mm ;
 int unmap_pte_fn ;

void arch_gnttab_unmap_shared(struct grant_entry *shared,
         unsigned long nr_gframes)
{
 apply_to_page_range(&init_mm, (unsigned long)shared,
       PAGE_SIZE * nr_gframes, unmap_pte_fn, ((void*)0));
}
