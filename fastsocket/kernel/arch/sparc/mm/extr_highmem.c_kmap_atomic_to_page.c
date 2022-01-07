
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 int BUG_ON (int) ;
 unsigned long FIXADDR_START ;
 unsigned long FIXADDR_TOP ;
 unsigned long FIX_KMAP_BEGIN ;
 int PAGE_SHIFT ;
 unsigned long PKMAP_BASE ;
 unsigned long SRMMU_NOCACHE_VADDR ;
 int __nocache_pa (unsigned long) ;
 int * kmap_pte ;
 struct page* pfn_to_page (int) ;
 struct page* pte_page (int ) ;
 unsigned long virt_to_fix (unsigned long) ;
 struct page* virt_to_page (void*) ;

struct page *kmap_atomic_to_page(void *ptr)
{
 unsigned long idx, vaddr = (unsigned long)ptr;
 pte_t *pte;

 if (vaddr < SRMMU_NOCACHE_VADDR)
  return virt_to_page(ptr);
 if (vaddr < PKMAP_BASE)
  return pfn_to_page(__nocache_pa(vaddr) >> PAGE_SHIFT);
 BUG_ON(vaddr < FIXADDR_START);
 BUG_ON(vaddr > FIXADDR_TOP);

 idx = virt_to_fix(vaddr);
 pte = kmap_pte - (idx - FIX_KMAP_BEGIN);
 return pte_page(*pte);
}
