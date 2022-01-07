
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tsb_block; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned long CTX_NRBITS (TYPE_1__) ;
 scalar_t__ CTX_VALID (TYPE_1__) ;
 unsigned long MM_NUM_TSBS ;
 int ctx_alloc_lock ;
 unsigned long* mmu_context_bmap ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tsb_destroy_one (int *) ;

void destroy_context(struct mm_struct *mm)
{
 unsigned long flags, i;

 for (i = 0; i < MM_NUM_TSBS; i++)
  tsb_destroy_one(&mm->context.tsb_block[i]);

 spin_lock_irqsave(&ctx_alloc_lock, flags);

 if (CTX_VALID(mm->context)) {
  unsigned long nr = CTX_NRBITS(mm->context);
  mmu_context_bmap[nr>>6] &= ~(1UL << (nr & 63));
 }

 spin_unlock_irqrestore(&ctx_alloc_lock, flags);
}
