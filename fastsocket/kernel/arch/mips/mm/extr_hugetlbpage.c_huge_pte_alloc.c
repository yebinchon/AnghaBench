
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pgd_t ;


 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

pte_t *huge_pte_alloc(struct mm_struct *mm, unsigned long addr,
        unsigned long sz, bool *shared)
{
 pgd_t *pgd;
 pud_t *pud;
 pte_t *pte = ((void*)0);

 pgd = pgd_offset(mm, addr);
 pud = pud_alloc(mm, pgd, addr);
 if (pud)
  pte = (pte_t *)pmd_alloc(mm, pud, addr);

 return pte;
}
