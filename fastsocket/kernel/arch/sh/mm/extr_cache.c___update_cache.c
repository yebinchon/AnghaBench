
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;
typedef int pte_t ;
struct TYPE_3__ {int n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int PG_dcache_dirty ;
 int __flush_purge_region (void*,int ) ;
 TYPE_2__ boot_cpu_data ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ pages_do_alias (unsigned long,unsigned long) ;
 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 int test_and_clear_bit (int ,int *) ;

void __update_cache(struct vm_area_struct *vma,
      unsigned long address, pte_t pte)
{
 struct page *page;
 unsigned long pfn = pte_pfn(pte);

 if (!boot_cpu_data.dcache.n_aliases)
  return;

 page = pfn_to_page(pfn);
 if (pfn_valid(pfn)) {
  int dirty = test_and_clear_bit(PG_dcache_dirty, &page->flags);
  if (dirty) {
   unsigned long addr = (unsigned long)page_address(page);

   if (pages_do_alias(addr, address & PAGE_MASK))
    __flush_purge_region((void *)addr, PAGE_SIZE);
  }
 }
}
