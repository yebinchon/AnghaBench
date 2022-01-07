
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PAGE_MASK ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_offset (int ,unsigned long) ;
 scalar_t__ pmd_present (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pte_val (int ) ;
 int pud_offset (int *,unsigned long) ;

int get_8xx_pte(struct mm_struct *mm, unsigned long addr)
{
 pgd_t *pgd;
 pmd_t *pmd;
 pte_t *pte;
 int retval = 0;

 pgd = pgd_offset(mm, addr & PAGE_MASK);
 if (pgd) {
  pmd = pmd_offset(pud_offset(pgd, addr & PAGE_MASK),
                   addr & PAGE_MASK);
  if (pmd && pmd_present(*pmd)) {
   pte = pte_offset_kernel(pmd, addr & PAGE_MASK);
   if (pte) {
    retval = (int)pte_val(*pte);
   }
  }
 }
 return retval;
}
