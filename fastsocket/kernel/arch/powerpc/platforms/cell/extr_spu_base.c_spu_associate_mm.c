
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu {struct mm_struct* mm; } ;
struct mm_struct {int dummy; } ;


 int mm_needs_global_tlbie (struct mm_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spu_full_list_lock ;

void spu_associate_mm(struct spu *spu, struct mm_struct *mm)
{
 unsigned long flags;

 spin_lock_irqsave(&spu_full_list_lock, flags);
 spu->mm = mm;
 spin_unlock_irqrestore(&spu_full_list_lock, flags);
 if (mm)
  mm_needs_global_tlbie(mm);
}
