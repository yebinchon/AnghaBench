
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int KM_PPC_SYNC_ICACHE ;
 int PAGE_SHIFT ;
 int __flush_dcache_icache (void*) ;
 int __flush_dcache_icache_phys (int) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 void* page_address (struct page*) ;
 int page_to_pfn (struct page*) ;

void flush_dcache_icache_page(struct page *page)
{
 __flush_dcache_icache_phys(page_to_pfn(page) << PAGE_SHIFT);


}
