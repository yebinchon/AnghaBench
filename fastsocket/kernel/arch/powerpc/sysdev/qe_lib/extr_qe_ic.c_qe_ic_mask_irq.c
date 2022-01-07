
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qe_ic {int regs; } ;
struct TYPE_2__ {int mask; int mask_reg; } ;


 int mb () ;
 struct qe_ic* qe_ic_from_irq (unsigned int) ;
 TYPE_1__* qe_ic_info ;
 int qe_ic_lock ;
 int qe_ic_read (int ,int ) ;
 int qe_ic_write (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int virq_to_hw (unsigned int) ;

__attribute__((used)) static void qe_ic_mask_irq(unsigned int virq)
{
 struct qe_ic *qe_ic = qe_ic_from_irq(virq);
 unsigned int src = virq_to_hw(virq);
 unsigned long flags;
 u32 temp;

 spin_lock_irqsave(&qe_ic_lock, flags);

 temp = qe_ic_read(qe_ic->regs, qe_ic_info[src].mask_reg);
 qe_ic_write(qe_ic->regs, qe_ic_info[src].mask_reg,
      temp & ~qe_ic_info[src].mask);
 mb();

 spin_unlock_irqrestore(&qe_ic_lock, flags);
}
