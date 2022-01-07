
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct irq_desc {TYPE_2__* chip; } ;
struct TYPE_10__ {scalar_t__ irq; int slot_no; TYPE_1__* ops; int claimed; struct TYPE_10__* next; } ;
typedef TYPE_3__ ecard_t ;
struct TYPE_11__ {int (* irqpending ) (TYPE_3__*) ;} ;
struct TYPE_9__ {int (* unmask ) (unsigned int) ;int (* mask ) (unsigned int) ;} ;
struct TYPE_8__ {int (* irqpending ) (TYPE_3__*) ;} ;


 scalar_t__ NO_IRQ ;
 TYPE_3__* cards ;
 int ecard_check_lockup (struct irq_desc*) ;
 TYPE_6__ ecard_default_ops ;
 int generic_handle_irq (scalar_t__) ;
 int stub1 (unsigned int) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (unsigned int) ;

__attribute__((used)) static void
ecard_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 ecard_t *ec;
 int called = 0;

 desc->chip->mask(irq);
 for (ec = cards; ec; ec = ec->next) {
  int pending;

  if (!ec->claimed || ec->irq == NO_IRQ || ec->slot_no == 8)
   continue;

  if (ec->ops && ec->ops->irqpending)
   pending = ec->ops->irqpending(ec);
  else
   pending = ecard_default_ops.irqpending(ec);

  if (pending) {
   generic_handle_irq(ec->irq);
   called ++;
  }
 }
 desc->chip->unmask(irq);

 if (called == 0)
  ecard_check_lockup(desc);
}
