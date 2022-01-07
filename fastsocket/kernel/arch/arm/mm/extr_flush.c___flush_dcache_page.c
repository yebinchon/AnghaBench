
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct address_space {int dummy; } ;


 int PAGE_CACHE_SHIFT ;
 int __cpuc_flush_dcache_page (scalar_t__) ;
 scalar_t__ cache_is_vipt_aliasing () ;
 int flush_pfn_alias (int ,int) ;
 scalar_t__ page_address (struct page*) ;
 int page_to_pfn (struct page*) ;

void __flush_dcache_page(struct address_space *mapping, struct page *page)
{
  __cpuc_flush_dcache_page(page_address(page));






 if (mapping && cache_is_vipt_aliasing())
  flush_pfn_alias(page_to_pfn(page),
    page->index << PAGE_CACHE_SHIFT);
}
