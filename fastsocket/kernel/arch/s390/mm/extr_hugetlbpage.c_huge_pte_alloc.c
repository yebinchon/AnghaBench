
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
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

pte_t *huge_pte_alloc(struct mm_struct *mm,
   unsigned long addr, unsigned long sz,
   bool *shared)
{
 pgd_t *pgdp;
 pud_t *pudp;
 pmd_t *pmdp = ((void*)0);

 pgdp = pgd_offset(mm, addr);
 pudp = pud_alloc(mm, pgdp, addr);
 if (pudp)
  pmdp = pmd_alloc(mm, pudp, addr);
 return (pte_t *) pmdp;
}
