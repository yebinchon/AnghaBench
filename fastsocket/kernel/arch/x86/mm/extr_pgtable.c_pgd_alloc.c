
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int * pgd; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 int PGALLOC_GFP ;
 int PREALLOCATED_PMDS ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int free_pmds (int **) ;
 scalar_t__ paravirt_pgd_alloc (struct mm_struct*) ;
 int pgd_ctor (struct mm_struct*,int *) ;
 int pgd_lock ;
 int pgd_prepopulate_pmd (struct mm_struct*,int *,int **) ;
 scalar_t__ preallocate_pmds (int **) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

pgd_t *pgd_alloc(struct mm_struct *mm)
{
 pgd_t *pgd;
 pmd_t *pmds[PREALLOCATED_PMDS];

 pgd = (pgd_t *)__get_free_page(PGALLOC_GFP);

 if (pgd == ((void*)0))
  goto out;

 mm->pgd = pgd;

 if (preallocate_pmds(pmds) != 0)
  goto out_free_pgd;

 if (paravirt_pgd_alloc(mm) != 0)
  goto out_free_pmds;






 spin_lock(&pgd_lock);

 pgd_ctor(mm, pgd);
 pgd_prepopulate_pmd(mm, pgd, pmds);

 spin_unlock(&pgd_lock);

 return pgd;

out_free_pmds:
 free_pmds(pmds);
out_free_pgd:
 free_page((unsigned long)pgd);
out:
 return ((void*)0);
}
