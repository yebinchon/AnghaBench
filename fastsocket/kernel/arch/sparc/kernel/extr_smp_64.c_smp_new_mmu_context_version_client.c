
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_5__ {int lock; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;


 int CTX_HWBITS (TYPE_2__) ;
 int CTX_VALID (TYPE_2__) ;
 int SECONDARY_CONTEXT ;
 int __flush_tlb_mm (int ,int ) ;
 int clear_softint (int) ;
 TYPE_1__* current ;
 int get_new_mmu_context (struct mm_struct*) ;
 struct mm_struct init_mm ;
 int load_secondary_context (struct mm_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void smp_new_mmu_context_version_client(int irq, struct pt_regs *regs)
{
 struct mm_struct *mm;
 unsigned long flags;

 clear_softint(1 << irq);




 mm = current->active_mm;
 if (unlikely(!mm || (mm == &init_mm)))
  return;

 spin_lock_irqsave(&mm->context.lock, flags);

 if (unlikely(!CTX_VALID(mm->context)))
  get_new_mmu_context(mm);

 spin_unlock_irqrestore(&mm->context.lock, flags);

 load_secondary_context(mm);
 __flush_tlb_mm(CTX_HWBITS(mm->context),
         SECONDARY_CONTEXT);
}
