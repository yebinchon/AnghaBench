
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int free_page (unsigned long) ;
 int paravirt_pgd_free (struct mm_struct*,int *) ;
 int pgd_dtor (int *) ;
 int pgd_mop_up_pmds (struct mm_struct*,int *) ;

void pgd_free(struct mm_struct *mm, pgd_t *pgd)
{
 pgd_mop_up_pmds(mm, pgd);
 pgd_dtor(pgd);
 paravirt_pgd_free(mm, pgd);
 free_page((unsigned long)pgd);
}
