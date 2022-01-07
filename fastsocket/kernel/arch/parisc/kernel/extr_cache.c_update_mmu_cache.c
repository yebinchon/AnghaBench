
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;
typedef int pte_t ;


 int PG_dcache_dirty ;
 int clear_bit (int ,int *) ;
 int flush_kernel_dcache_page (struct page*) ;
 scalar_t__ page_mapping (struct page*) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ parisc_requires_coherency () ;
 scalar_t__ pfn_valid (int ) ;
 struct page* pte_page (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void
update_mmu_cache(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
 struct page *page = pte_page(pte);

 if (pfn_valid(page_to_pfn(page)) && page_mapping(page) &&
     test_bit(PG_dcache_dirty, &page->flags)) {

  flush_kernel_dcache_page(page);
  clear_bit(PG_dcache_dirty, &page->flags);
 } else if (parisc_requires_coherency())
  flush_kernel_dcache_page(page);
}
