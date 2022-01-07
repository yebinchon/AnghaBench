
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int free_page (unsigned long) ;
 int * xen_get_user_pgd (int *) ;

__attribute__((used)) static void xen_pgd_free(struct mm_struct *mm, pgd_t *pgd)
{






}
