
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 scalar_t__ SHARED_KERNEL_PMD ;
 int pgd_list_del (int *) ;
 int pgd_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pgd_dtor(pgd_t *pgd)
{
 if (SHARED_KERNEL_PMD)
  return;

 spin_lock(&pgd_lock);
 pgd_list_del(pgd);
 spin_unlock(&pgd_lock);
}
