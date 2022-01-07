
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 unsigned long PMD_SIZE ;
 unsigned long PUD_SIZE ;
 int huge_pmd_share (struct mm_struct*,unsigned long,int *,int*) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int pte_huge (int ) ;
 int pte_none (int ) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;
 scalar_t__ pud_none (int ) ;

pte_t *huge_pte_alloc(struct mm_struct *mm,
   unsigned long addr, unsigned long sz,
   bool *shared)
{
 pgd_t *pgd;
 pud_t *pud;
 pte_t *pte = ((void*)0);

 pgd = pgd_offset(mm, addr);
 pud = pud_alloc(mm, pgd, addr);
 if (pud) {
  if (sz == PUD_SIZE) {
   pte = (pte_t *)pud;
  } else {
   BUG_ON(sz != PMD_SIZE);
   if (pud_none(*pud))
    huge_pmd_share(mm, addr, pud, shared);
   pte = (pte_t *) pmd_alloc(mm, pud, addr);
  }
 }
 BUG_ON(pte && !pte_none(*pte) && !pte_huge(*pte));

 return pte;
}
