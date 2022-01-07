
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;


 int BUG_ON (int) ;
 unsigned int PG_LEVEL_4K ;
 int _PAGE_HIDDEN ;
 int _PAGE_PRESENT ;
 int __flush_tlb_one (unsigned long) ;
 int __pte (int) ;
 int * lookup_address (unsigned long,unsigned int*) ;
 scalar_t__ page_address (struct page*) ;
 int pte_val (int ) ;
 int set_pte (int *,int ) ;

void kmemcheck_show_pages(struct page *p, unsigned int n)
{
 unsigned int i;

 for (i = 0; i < n; ++i) {
  unsigned long address;
  pte_t *pte;
  unsigned int level;

  address = (unsigned long) page_address(&p[i]);
  pte = lookup_address(address, &level);
  BUG_ON(!pte);
  BUG_ON(level != PG_LEVEL_4K);

  set_pte(pte, __pte(pte_val(*pte) | _PAGE_PRESENT));
  set_pte(pte, __pte(pte_val(*pte) & ~_PAGE_HIDDEN));
  __flush_tlb_one(address);
 }
}
