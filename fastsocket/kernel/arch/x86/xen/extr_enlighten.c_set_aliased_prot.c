
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;
typedef int pgprot_t ;


 int BUG () ;
 int BUG_ON (int ) ;
 scalar_t__ HYPERVISOR_update_va_mapping (unsigned long,int ,int ) ;
 int PFN_PHYS (unsigned long) ;
 int PageHighMem (struct page*) ;
 void* __va (int ) ;
 int kmap_flush_unused () ;
 int * lookup_address (unsigned long,int*) ;
 int pfn_pte (unsigned long,int ) ;
 struct page* pfn_to_page (unsigned long) ;
 unsigned long pte_pfn (int ) ;

__attribute__((used)) static void set_aliased_prot(void *v, pgprot_t prot)
{
 int level;
 pte_t *ptep;
 pte_t pte;
 unsigned long pfn;
 struct page *page;

 ptep = lookup_address((unsigned long)v, &level);
 BUG_ON(ptep == ((void*)0));

 pfn = pte_pfn(*ptep);
 page = pfn_to_page(pfn);

 pte = pfn_pte(pfn, prot);

 if (HYPERVISOR_update_va_mapping((unsigned long)v, pte, 0))
  BUG();

 if (!PageHighMem(page)) {
  void *av = __va(PFN_PHYS(pfn));

  if (av != v)
   if (HYPERVISOR_update_va_mapping((unsigned long)av, pte, 0))
    BUG();
 } else
  kmap_flush_unused();
}
