
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NR_IRQS ;
 int cc_get_imsk_other (int) ;
 int cc_set_imsk_other (int,int) ;
 int* sbus_tid ;
 int* sbus_to_pil ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sun4d_imsk_lock ;

__attribute__((used)) static void sun4d_disable_irq(unsigned int irq)
{
 int tid = sbus_tid[(irq >> 5) - 1];
 unsigned long flags;

 if (irq < NR_IRQS)
  return;

 spin_lock_irqsave(&sun4d_imsk_lock, flags);
 cc_set_imsk_other(tid, cc_get_imsk_other(tid) | (1 << sbus_to_pil[(irq >> 2) & 7]));
 spin_unlock_irqrestore(&sun4d_imsk_lock, flags);
}
