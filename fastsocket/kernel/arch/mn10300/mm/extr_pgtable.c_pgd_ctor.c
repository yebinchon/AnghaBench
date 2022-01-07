
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int PTRS_PER_PGD ;
 int PTRS_PER_PMD ;
 int USER_PTRS_PER_PGD ;
 int memcpy (int *,scalar_t__,int) ;
 int memset (void*,int ,int) ;
 int pgd_list_add (void*) ;
 int pgd_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ swapper_pg_dir ;

void pgd_ctor(void *pgd)
{
 unsigned long flags;

 if (PTRS_PER_PMD == 1)
  spin_lock_irqsave(&pgd_lock, flags);

 memcpy((pgd_t *)pgd + USER_PTRS_PER_PGD,
   swapper_pg_dir + USER_PTRS_PER_PGD,
   (PTRS_PER_PGD - USER_PTRS_PER_PGD) * sizeof(pgd_t));

 if (PTRS_PER_PMD > 1)
  return;

 pgd_list_add(pgd);
 spin_unlock_irqrestore(&pgd_lock, flags);
 memset(pgd, 0, USER_PTRS_PER_PGD * sizeof(pgd_t));
}
