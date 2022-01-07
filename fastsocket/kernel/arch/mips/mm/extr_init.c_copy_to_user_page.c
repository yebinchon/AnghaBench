
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;


 unsigned long PAGE_MASK ;
 int Page_dcache_dirty (struct page*) ;
 int SetPageDcacheDirty (struct page*) ;
 int VM_EXEC ;
 scalar_t__ cpu_has_dc_aliases ;
 int cpu_has_ic_fills_f_dc ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 void* kmap_coherent (struct page*,unsigned long) ;
 int kunmap_coherent () ;
 int memcpy (void*,void const*,unsigned long) ;
 scalar_t__ page_mapped (struct page*) ;
 int page_to_pfn (struct page*) ;

void copy_to_user_page(struct vm_area_struct *vma,
 struct page *page, unsigned long vaddr, void *dst, const void *src,
 unsigned long len)
{
 if (cpu_has_dc_aliases &&
     page_mapped(page) && !Page_dcache_dirty(page)) {
  void *vto = kmap_coherent(page, vaddr) + (vaddr & ~PAGE_MASK);
  memcpy(vto, src, len);
  kunmap_coherent();
 } else {
  memcpy(dst, src, len);
  if (cpu_has_dc_aliases)
   SetPageDcacheDirty(page);
 }
 if ((vma->vm_flags & VM_EXEC) && !cpu_has_ic_fills_f_dc)
  flush_cache_page(vma, vaddr, page_to_pfn(page));
}
