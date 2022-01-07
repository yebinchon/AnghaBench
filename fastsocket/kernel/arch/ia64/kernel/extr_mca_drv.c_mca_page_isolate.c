
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int isolate_status_t ;


 int ISOLATE_NG ;
 int ISOLATE_NONE ;
 int ISOLATE_OK ;
 int MAX_PAGE_ISOLATE ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PageReserved (struct page*) ;
 scalar_t__ PageSlab (struct page*) ;
 int SetPageReserved (struct page*) ;
 int get_page (struct page*) ;
 int ia64_phys_addr_valid (unsigned long) ;
 int num_page_isolate ;
 struct page** page_isolate ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;

__attribute__((used)) static isolate_status_t
mca_page_isolate(unsigned long paddr)
{
 int i;
 struct page *p;


 if (!ia64_phys_addr_valid(paddr))
  return ISOLATE_NONE;

 if (!pfn_valid(paddr >> PAGE_SHIFT))
  return ISOLATE_NONE;


 p = pfn_to_page(paddr>>PAGE_SHIFT);


 for (i = 0; i < num_page_isolate; i++)
  if (page_isolate[i] == p)
   return ISOLATE_OK;


 if (num_page_isolate == MAX_PAGE_ISOLATE)
  return ISOLATE_NG;


 if (PageSlab(p) || PageReserved(p))
  return ISOLATE_NG;


 get_page(p);
 SetPageReserved(p);
 page_isolate[num_page_isolate++] = p;

 return ISOLATE_OK;
}
