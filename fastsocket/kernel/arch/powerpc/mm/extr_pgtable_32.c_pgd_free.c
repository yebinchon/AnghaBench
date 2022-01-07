
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PGDIR_ORDER ;
 int free_pages (unsigned long,scalar_t__) ;
 int kfree (void*) ;

void pgd_free(struct mm_struct *mm, pgd_t *pgd)
{

 kfree((void *)pgd);



}
