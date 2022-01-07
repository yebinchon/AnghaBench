
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aic7xxx_host {TYPE_1__* host; int flags; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int host_lock; } ;


 int AHC_IN_ISR ;
 int INTSTAT ;
 int INT_PEND ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int aic7xxx_done_cmds_complete (struct aic7xxx_host*) ;
 int aic7xxx_isr (void*) ;
 int aic7xxx_run_waiting_queues (struct aic7xxx_host*) ;
 int aic_inb (struct aic7xxx_host*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t
do_aic7xxx_isr(int irq, void *dev_id)
{
  unsigned long cpu_flags;
  struct aic7xxx_host *p;

  p = dev_id;
  if(!p)
    return IRQ_NONE;
  spin_lock_irqsave(p->host->host_lock, cpu_flags);
  p->flags |= AHC_IN_ISR;
  do
  {
    aic7xxx_isr(dev_id);
  } while ( (aic_inb(p, INTSTAT) & INT_PEND) );
  aic7xxx_done_cmds_complete(p);
  aic7xxx_run_waiting_queues(p);
  p->flags &= ~AHC_IN_ISR;
  spin_unlock_irqrestore(p->host->host_lock, cpu_flags);

  return IRQ_HANDLED;
}
