
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 scalar_t__ PageHighMem (struct page*) ;
 int SetPageDcacheDirty (struct page*) ;
 int flush_data_cache_page (unsigned long) ;
 int mapping_mapped (struct address_space*) ;
 scalar_t__ page_address (struct page*) ;
 struct address_space* page_mapping (struct page*) ;

void __flush_dcache_page(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 unsigned long addr;

 if (PageHighMem(page))
  return;
 if (mapping && !mapping_mapped(mapping)) {
  SetPageDcacheDirty(page);
  return;
 }






 addr = (unsigned long) page_address(page);
 flush_data_cache_page(addr);
}
