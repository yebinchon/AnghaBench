
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int Page_dcache_dirty (struct page*) ;
 int flush_data_cache_page (unsigned long) ;
 void* kmap_coherent (struct page*,unsigned long) ;
 int kunmap_coherent () ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 scalar_t__ pages_do_alias (unsigned long,unsigned long) ;

void __flush_anon_page(struct page *page, unsigned long vmaddr)
{
 unsigned long addr = (unsigned long) page_address(page);

 if (pages_do_alias(addr, vmaddr)) {
  if (page_mapped(page) && !Page_dcache_dirty(page)) {
   void *kaddr;

   kaddr = kmap_coherent(page, vmaddr);
   flush_data_cache_page((unsigned long)kaddr);
   kunmap_coherent();
  } else
   flush_data_cache_page(addr);
 }
}
