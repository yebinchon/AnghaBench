
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 int PAGE_SHIFT ;
 int PREALLOCATED_PMDS ;
 int native_make_pgd (int ) ;
 int paravirt_release_pmd (int) ;
 scalar_t__ pgd_page_vaddr (int ) ;
 int pgd_val (int ) ;
 int pmd_free (struct mm_struct*,int *) ;

__attribute__((used)) static void pgd_mop_up_pmds(struct mm_struct *mm, pgd_t *pgdp)
{
 int i;

 for(i = 0; i < PREALLOCATED_PMDS; i++) {
  pgd_t pgd = pgdp[i];

  if (pgd_val(pgd) != 0) {
   pmd_t *pmd = (pmd_t *)pgd_page_vaddr(pgd);

   pgdp[i] = native_make_pgd(0);

   paravirt_release_pmd(pgd_val(pgd) >> PAGE_SHIFT);
   pmd_free(mm, pmd);
  }
 }
}
