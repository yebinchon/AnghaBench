
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EHCA_HUGEPAGESHIFT ;
 unsigned long EHCA_HUGEPAGE_PFN_MASK ;
 scalar_t__ PAGE_SHIFT ;
 int compound_order (int ) ;
 int pfn_to_page (unsigned long) ;

__attribute__((used)) static int ehca_is_hugepage(unsigned long pfn)
{
 int page_order;

 if (pfn & EHCA_HUGEPAGE_PFN_MASK)
  return 0;

 page_order = compound_order(pfn_to_page(pfn));
 if (page_order + PAGE_SHIFT != EHCA_HUGEPAGESHIFT)
  return 0;

 return 1;
}
