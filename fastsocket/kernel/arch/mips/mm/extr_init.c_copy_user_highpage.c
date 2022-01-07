
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int KM_USER0 ;
 int KM_USER1 ;
 unsigned long PAGE_MASK ;
 int Page_dcache_dirty (struct page*) ;
 int copy_page (void*,void*) ;
 scalar_t__ cpu_has_dc_aliases ;
 int cpu_has_ic_fills_f_dc ;
 int flush_data_cache_page (unsigned long) ;
 void* kmap_atomic (struct page*,int ) ;
 void* kmap_coherent (struct page*,unsigned long) ;
 int kunmap_atomic (void*,int ) ;
 int kunmap_coherent () ;
 scalar_t__ page_mapped (struct page*) ;
 scalar_t__ pages_do_alias (unsigned long,unsigned long) ;
 int smp_wmb () ;

void copy_user_highpage(struct page *to, struct page *from,
 unsigned long vaddr, struct vm_area_struct *vma)
{
 void *vfrom, *vto;

 vto = kmap_atomic(to, KM_USER1);
 if (cpu_has_dc_aliases &&
     page_mapped(from) && !Page_dcache_dirty(from)) {
  vfrom = kmap_coherent(from, vaddr);
  copy_page(vto, vfrom);
  kunmap_coherent();
 } else {
  vfrom = kmap_atomic(from, KM_USER0);
  copy_page(vto, vfrom);
  kunmap_atomic(vfrom, KM_USER0);
 }
 if ((!cpu_has_ic_fills_f_dc) ||
     pages_do_alias((unsigned long)vto, vaddr & PAGE_MASK))
  flush_data_cache_page((unsigned long)vto);
 kunmap_atomic(vto, KM_USER1);

 smp_wmb();
}
