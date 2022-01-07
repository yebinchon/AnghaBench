
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {void* shadow; } ;
typedef int pte_t ;


 int PAGE_SIZE ;
 int * kmemcheck_pte_lookup (unsigned long) ;
 int virt_addr_valid (unsigned long) ;
 struct page* virt_to_page (unsigned long) ;

void *kmemcheck_shadow_lookup(unsigned long address)
{
 pte_t *pte;
 struct page *page;

 if (!virt_addr_valid(address))
  return ((void*)0);

 pte = kmemcheck_pte_lookup(address);
 if (!pte)
  return ((void*)0);

 page = virt_to_page(address);
 if (!page->shadow)
  return ((void*)0);
 return page->shadow + (address & (PAGE_SIZE - 1));
}
