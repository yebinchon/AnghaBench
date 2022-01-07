
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int __cpuc_flush_dcache_page (int ) ;
 scalar_t__ cache_is_vipt_nonaliasing () ;
 scalar_t__ cache_is_vivt () ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,unsigned long) ;
 int flush_pfn_alias (unsigned long,unsigned long) ;
 int page_address (struct page*) ;
 unsigned long page_to_pfn (struct page*) ;

void __flush_anon_page(struct vm_area_struct *vma, struct page *page, unsigned long vmaddr)
{
 unsigned long pfn;


 if (cache_is_vipt_nonaliasing())
  return;




 pfn = page_to_pfn(page);
 if (cache_is_vivt()) {
  flush_cache_page(vma, vmaddr, pfn);
 } else {




  flush_pfn_alias(pfn, vmaddr);
 }






 __cpuc_flush_dcache_page(page_address(page));
}
