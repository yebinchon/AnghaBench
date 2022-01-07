
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct address_space {int dummy; } ;


 int PG_dcache_dirty ;
 int PageHighMem (struct page*) ;
 int __flush_dcache_aliases (struct address_space*,struct page*) ;
 int __flush_dcache_page (struct address_space*,struct page*) ;
 int __flush_icache_all () ;
 scalar_t__ cache_is_vivt () ;
 int mapping_mapped (struct address_space*) ;
 struct address_space* page_mapping (struct page*) ;
 int set_bit (int ,int *) ;

void flush_dcache_page(struct page *page)
{
 struct address_space *mapping = page_mapping(page);


 if (!PageHighMem(page) && mapping && !mapping_mapped(mapping))
  set_bit(PG_dcache_dirty, &page->flags);
 else

 {
  __flush_dcache_page(mapping, page);
  if (mapping && cache_is_vivt())
   __flush_dcache_aliases(mapping, page);
  else if (mapping)
   __flush_icache_all();
 }
}
