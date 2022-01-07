
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
typedef int pte_t ;


 int ClearPageDcacheDirty (struct page*) ;
 unsigned long PAGE_MASK ;
 scalar_t__ Page_dcache_dirty (struct page*) ;
 int VM_EXEC ;
 int cpu_has_ic_fills_f_dc ;
 int flush_data_cache_page (unsigned long) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ page_mapping (struct page*) ;
 scalar_t__ pages_do_alias (unsigned long,unsigned long) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ unlikely (int) ;

void __update_cache(struct vm_area_struct *vma, unsigned long address,
 pte_t pte)
{
 struct page *page;
 unsigned long pfn, addr;
 int exec = (vma->vm_flags & VM_EXEC) && !cpu_has_ic_fills_f_dc;

 pfn = pte_pfn(pte);
 if (unlikely(!pfn_valid(pfn)))
  return;
 page = pfn_to_page(pfn);
 if (page_mapping(page) && Page_dcache_dirty(page)) {
  addr = (unsigned long) page_address(page);
  if (exec || pages_do_alias(addr, address & PAGE_MASK))
   flush_data_cache_page(addr);
  ClearPageDcacheDirty(page);
 }
}
