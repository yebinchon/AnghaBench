
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int _PAGE_PRESENT ;
 int __flush_tlb_one (unsigned long) ;
 int __pte (int) ;
 int * kmemcheck_pte_lookup (unsigned long) ;
 int pte_val (int ) ;
 int set_pte (int *,int ) ;

int kmemcheck_show_addr(unsigned long address)
{
 pte_t *pte;

 pte = kmemcheck_pte_lookup(address);
 if (!pte)
  return 0;

 set_pte(pte, __pte(pte_val(*pte) | _PAGE_PRESENT));
 __flush_tlb_one(address);
 return 1;
}
