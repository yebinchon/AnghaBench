
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_4__* ops; } ;
typedef TYPE_1__ ecard_t ;
struct TYPE_6__ {int (* irqdisable ) (TYPE_1__*,unsigned int) ;} ;


 TYPE_4__ ecard_default_ops ;
 TYPE_1__* slot_to_ecard (unsigned int) ;
 int stub1 (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void ecard_irq_mask(unsigned int irqnr)
{
 ecard_t *ec = slot_to_ecard(irqnr - 32);

 if (ec) {
  if (!ec->ops)
   ec->ops = &ecard_default_ops;

  if (ec->ops && ec->ops->irqdisable)
   ec->ops->irqdisable(ec, irqnr);
 }
}
