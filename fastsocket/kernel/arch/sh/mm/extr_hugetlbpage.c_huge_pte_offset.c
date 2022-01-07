
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;

pte_t *huge_pte_offset(struct mm_struct *mm, unsigned long addr)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte = ((void*)0);

 pgd = pgd_offset(mm, addr);
 if (pgd) {
  pud = pud_offset(pgd, addr);
  if (pud) {
   pmd = pmd_offset(pud, addr);
   if (pmd)
    pte = pte_offset_map(pmd, addr);
  }
 }

 return pte;
}
