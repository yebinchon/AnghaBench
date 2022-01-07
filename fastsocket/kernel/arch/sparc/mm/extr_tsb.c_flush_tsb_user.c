
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmu_gather {struct mm_struct* mm; } ;
struct TYPE_4__ {int lock; TYPE_1__* tsb_block; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_3__ {unsigned long tsb_nentries; scalar_t__ tsb; } ;


 int HPAGE_SHIFT ;
 size_t MM_TSB_BASE ;
 size_t MM_TSB_HUGE ;
 int PAGE_SHIFT ;
 int __flush_tsb_one (struct mmu_gather*,int ,unsigned long,unsigned long) ;
 unsigned long __pa (unsigned long) ;
 scalar_t__ cheetah_plus ;
 scalar_t__ hypervisor ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tlb_type ;

void flush_tsb_user(struct mmu_gather *mp)
{
 struct mm_struct *mm = mp->mm;
 unsigned long nentries, base, flags;

 spin_lock_irqsave(&mm->context.lock, flags);

 base = (unsigned long) mm->context.tsb_block[MM_TSB_BASE].tsb;
 nentries = mm->context.tsb_block[MM_TSB_BASE].tsb_nentries;
 if (tlb_type == cheetah_plus || tlb_type == hypervisor)
  base = __pa(base);
 __flush_tsb_one(mp, PAGE_SHIFT, base, nentries);
 spin_unlock_irqrestore(&mm->context.lock, flags);
}
