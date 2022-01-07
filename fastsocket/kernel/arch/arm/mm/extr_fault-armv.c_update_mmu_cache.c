
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int flags; } ;
struct address_space {int dummy; } ;
typedef int pte_t ;


 int PG_dcache_dirty ;
 int VM_EXEC ;
 int __flush_dcache_page (struct address_space*,struct page*) ;
 int __flush_icache_all () ;
 scalar_t__ cache_is_vivt () ;
 int make_coherent (struct address_space*,struct vm_area_struct*,unsigned long,unsigned long) ;
 struct address_space* page_mapping (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long addr, pte_t pte)
{
 unsigned long pfn = pte_pfn(pte);
 struct address_space *mapping;
 struct page *page;

 if (!pfn_valid(pfn))
  return;

 page = pfn_to_page(pfn);
 mapping = page_mapping(page);

 if (test_and_clear_bit(PG_dcache_dirty, &page->flags))
  __flush_dcache_page(mapping, page);

 if (mapping) {
  if (cache_is_vivt())
   make_coherent(mapping, vma, addr, pfn);
  else if (vma->vm_flags & VM_EXEC)
   __flush_icache_all();
 }
}
