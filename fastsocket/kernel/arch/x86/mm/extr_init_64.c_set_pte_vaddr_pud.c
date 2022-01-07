
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int __flush_tlb_one (unsigned long) ;
 int * fill_pmd (int *,unsigned long) ;
 int * fill_pte (int *,unsigned long) ;
 int pud_index (unsigned long) ;
 int set_pte (int *,int ) ;

void set_pte_vaddr_pud(pud_t *pud_page, unsigned long vaddr, pte_t new_pte)
{
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 pud = pud_page + pud_index(vaddr);
 pmd = fill_pmd(pud, vaddr);
 pte = fill_pte(pmd, vaddr);

 set_pte(pte, new_pte);





 __flush_tlb_one(vaddr);
}
