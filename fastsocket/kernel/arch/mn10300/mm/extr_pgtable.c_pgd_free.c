
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int pgd_dtor ;
 int quicklist_free (int ,int ,int *) ;

void pgd_free(struct mm_struct *mm, pgd_t *pgd)
{
 quicklist_free(0, pgd_dtor, pgd);
}
