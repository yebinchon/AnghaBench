
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int flags; } ;
typedef int pte_t ;


 int PG_arch_1 ;
 int VM_EXEC ;
 int clear_bit (int ,int *) ;
 int flush_data_cache_page (unsigned long) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ page_mapping (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void __update_cache(struct vm_area_struct *vma, unsigned long address,
  pte_t pte)
{
 struct page *page;
 unsigned long pfn, addr;
 int exec = (vma->vm_flags & VM_EXEC);

 pfn = pte_pfn(pte);
 if (unlikely(!pfn_valid(pfn)))
  return;
 page = pfn_to_page(pfn);
 if (page_mapping(page) && test_bit(PG_arch_1, &page->flags)) {
  addr = (unsigned long) page_address(page);
  if (exec)
   flush_data_cache_page(addr);
  clear_bit(PG_arch_1, &page->flags);
 }
}
