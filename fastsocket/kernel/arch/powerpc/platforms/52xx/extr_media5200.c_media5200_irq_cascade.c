
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct irq_desc {int status; int lock; TYPE_1__* chip; } ;
struct TYPE_4__ {int irqhost; scalar_t__ regs; } ;
struct TYPE_3__ {int (* unmask ) (unsigned int) ;int (* ack ) (unsigned int) ;int (* mask ) (unsigned int) ;} ;


 int IRQ_DISABLED ;
 scalar_t__ MEDIA5200_IRQ_ENABLE ;
 int MEDIA5200_IRQ_SHIFT ;
 scalar_t__ MEDIA5200_IRQ_STATUS ;
 int ffs (int) ;
 int generic_handle_irq (int) ;
 int in_be32 (scalar_t__) ;
 int irq_linear_revmap (int ,int) ;
 TYPE_2__ media5200_irq ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;

void media5200_irq_cascade(unsigned int virq, struct irq_desc *desc)
{
 int sub_virq, val;
 u32 status, enable;


 spin_lock(&desc->lock);
 desc->chip->mask(virq);
 spin_unlock(&desc->lock);



 status = in_be32(media5200_irq.regs + MEDIA5200_IRQ_ENABLE);
 enable = in_be32(media5200_irq.regs + MEDIA5200_IRQ_STATUS);
 val = ffs((status & enable) >> MEDIA5200_IRQ_SHIFT);
 if (val) {
  sub_virq = irq_linear_revmap(media5200_irq.irqhost, val - 1);



  generic_handle_irq(sub_virq);
 }


 spin_lock(&desc->lock);
 desc->chip->ack(virq);
 if (!(desc->status & IRQ_DISABLED))
  desc->chip->unmask(virq);
 spin_unlock(&desc->lock);
}
