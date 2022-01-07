
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;


 int PAGE_SHIFT ;
 int page_to_pfn (struct page*) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static u64 cvt_kvaddr(void *p)
{
 struct page *page;
 u64 paddr = 0;

 page = vmalloc_to_page(p);
 if (page)
  paddr = page_to_pfn(page) << PAGE_SHIFT;

 return paddr;
}
