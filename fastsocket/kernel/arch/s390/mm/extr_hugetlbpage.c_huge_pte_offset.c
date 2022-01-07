
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
 scalar_t__ pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ pud_present (int ) ;

pte_t *huge_pte_offset(struct mm_struct *mm, unsigned long addr)
{
 pgd_t *pgdp;
 pud_t *pudp;
 pmd_t *pmdp = ((void*)0);

 pgdp = pgd_offset(mm, addr);
 if (pgd_present(*pgdp)) {
  pudp = pud_offset(pgdp, addr);
  if (pud_present(*pudp))
   pmdp = pmd_offset(pudp, addr);
 }
 return (pte_t *) pmdp;
}
