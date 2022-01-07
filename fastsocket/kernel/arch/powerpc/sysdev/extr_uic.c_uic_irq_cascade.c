
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uic {int irqhost; scalar_t__ dcrbase; } ;
struct irq_desc {int status; int lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* ack ) (unsigned int) ;int (* mask_ack ) (unsigned int) ;int (* mask ) (unsigned int) ;} ;


 int IRQ_DISABLED ;
 int IRQ_LEVEL ;
 scalar_t__ UIC_MSR ;
 int ffs (int ) ;
 int generic_handle_irq (int) ;
 struct uic* get_irq_data (unsigned int) ;
 int irq_linear_revmap (int ,int) ;
 int mfdcr (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;
 int stub4 (unsigned int) ;

void uic_irq_cascade(unsigned int virq, struct irq_desc *desc)
{
 struct uic *uic = get_irq_data(virq);
 u32 msr;
 int src;
 int subvirq;

 spin_lock(&desc->lock);
 if (desc->status & IRQ_LEVEL)
  desc->chip->mask(virq);
 else
  desc->chip->mask_ack(virq);
 spin_unlock(&desc->lock);

 msr = mfdcr(uic->dcrbase + UIC_MSR);
 if (!msr)
  goto uic_irq_ret;

 src = 32 - ffs(msr);

 subvirq = irq_linear_revmap(uic->irqhost, src);
 generic_handle_irq(subvirq);

uic_irq_ret:
 spin_lock(&desc->lock);
 if (desc->status & IRQ_LEVEL)
  desc->chip->ack(virq);
 if (!(desc->status & IRQ_DISABLED) && desc->chip->unmask)
  desc->chip->unmask(virq);
 spin_unlock(&desc->lock);
}
