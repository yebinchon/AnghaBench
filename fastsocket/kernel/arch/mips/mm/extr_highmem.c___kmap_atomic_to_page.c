
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 unsigned long FIXADDR_START ;
 unsigned long FIX_KMAP_BEGIN ;
 int * kmap_pte ;
 struct page* pte_page (int ) ;
 unsigned long virt_to_fix (unsigned long) ;
 struct page* virt_to_page (void*) ;

struct page *__kmap_atomic_to_page(void *ptr)
{
 unsigned long idx, vaddr = (unsigned long)ptr;
 pte_t *pte;

 if (vaddr < FIXADDR_START)
  return virt_to_page(ptr);

 idx = virt_to_fix(vaddr);
 pte = kmap_pte - (idx - FIX_KMAP_BEGIN);
 return pte_page(*pte);
}
