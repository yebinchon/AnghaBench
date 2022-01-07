
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPagePinned (struct page*) ;
 int MMUEXT_UNPIN_TABLE ;
 int PFN_PHYS (unsigned long) ;
 unsigned int PT_PTE ;
 int PageHighMem (struct page*) ;
 scalar_t__ PagePinned (struct page*) ;
 scalar_t__ USE_SPLIT_PTLOCKS ;
 int __va (int ) ;
 int make_lowmem_page_readwrite (int ) ;
 struct page* pfn_to_page (unsigned long) ;
 int pin_pagetable_pfn (int ,unsigned long) ;

__attribute__((used)) static void xen_release_ptpage(unsigned long pfn, unsigned level)
{
 struct page *page = pfn_to_page(pfn);

 if (PagePinned(page)) {
  if (!PageHighMem(page)) {
   if (level == PT_PTE && USE_SPLIT_PTLOCKS)
    pin_pagetable_pfn(MMUEXT_UNPIN_TABLE, pfn);
   make_lowmem_page_readwrite(__va(PFN_PHYS(pfn)));
  }
  ClearPagePinned(page);
 }
}
