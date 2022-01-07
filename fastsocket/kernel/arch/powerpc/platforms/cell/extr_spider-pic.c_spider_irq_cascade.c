
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spider_pic {int host; scalar_t__ regs; } ;
struct irq_desc {TYPE_1__* chip; struct spider_pic* handler_data; } ;
struct TYPE_2__ {int (* eoi ) (unsigned int) ;} ;


 unsigned int NO_IRQ ;
 unsigned int SPIDER_IRQ_INVALID ;
 scalar_t__ TIR_CS ;
 int generic_handle_irq (unsigned int) ;
 int in_be32 (scalar_t__) ;
 unsigned int irq_linear_revmap (int ,unsigned int) ;
 int stub1 (unsigned int) ;

__attribute__((used)) static void spider_irq_cascade(unsigned int irq, struct irq_desc *desc)
{
 struct spider_pic *pic = desc->handler_data;
 unsigned int cs, virq;

 cs = in_be32(pic->regs + TIR_CS) >> 24;
 if (cs == SPIDER_IRQ_INVALID)
  virq = NO_IRQ;
 else
  virq = irq_linear_revmap(pic->host, cs);
 if (virq != NO_IRQ)
  generic_handle_irq(virq);
 desc->chip->eoi(irq);
}
