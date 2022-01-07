
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int pgd; } ;


 int MMUEXT_PIN_L1_TABLE ;
 int PFN_PHYS (unsigned long) ;
 unsigned int PT_PTE ;
 int PageHighMem (struct page*) ;
 scalar_t__ PagePinned (int ) ;
 int SetPagePinned (struct page*) ;
 scalar_t__ USE_SPLIT_PTLOCKS ;
 int __va (int ) ;
 int kmap_flush_unused () ;
 int make_lowmem_page_readonly (int ) ;
 struct page* pfn_to_page (unsigned long) ;
 int pin_pagetable_pfn (int ,unsigned long) ;
 int virt_to_page (int ) ;

__attribute__((used)) static void xen_alloc_ptpage(struct mm_struct *mm, unsigned long pfn, unsigned level)
{
 struct page *page = pfn_to_page(pfn);

 if (PagePinned(virt_to_page(mm->pgd))) {
  SetPagePinned(page);

  if (!PageHighMem(page)) {
   make_lowmem_page_readonly(__va(PFN_PHYS((unsigned long)pfn)));
   if (level == PT_PTE && USE_SPLIT_PTLOCKS)
    pin_pagetable_pfn(MMUEXT_PIN_L1_TABLE, pfn);
  } else {


   kmap_flush_unused();
  }
 }
}
