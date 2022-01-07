
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 unsigned long FIXADDR_START ;
 int * TOP_PTE (unsigned long) ;
 struct page* pte_page (int ) ;
 struct page* virt_to_page (void const*) ;

struct page *kmap_atomic_to_page(const void *ptr)
{
 unsigned long vaddr = (unsigned long)ptr;
 pte_t *pte;

 if (vaddr < FIXADDR_START)
  return virt_to_page(ptr);

 pte = TOP_PTE(vaddr);
 return pte_page(*pte);
}
