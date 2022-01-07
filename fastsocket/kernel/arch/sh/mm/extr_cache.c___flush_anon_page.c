
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int flags; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 int PAGE_SIZE ;
 int PG_dcache_dirty ;
 int __flush_purge_region (void*,int ) ;
 TYPE_2__ boot_cpu_data ;
 void* kmap_coherent (struct page*,unsigned long) ;
 int kunmap_coherent (void*) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 scalar_t__ pages_do_alias (unsigned long,unsigned long) ;
 int test_bit (int ,int *) ;

void __flush_anon_page(struct page *page, unsigned long vmaddr)
{
 unsigned long addr = (unsigned long) page_address(page);

 if (pages_do_alias(addr, vmaddr)) {
  if (boot_cpu_data.dcache.n_aliases && page_mapped(page) &&
      !test_bit(PG_dcache_dirty, &page->flags)) {
   void *kaddr;

   kaddr = kmap_coherent(page, vmaddr);


   kunmap_coherent(kaddr);
  } else
   __flush_purge_region((void *)addr, PAGE_SIZE);
 }
}
