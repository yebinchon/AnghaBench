
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 TYPE_1__* irq_desc ;
 int unmask_msc_irq (unsigned int) ;

__attribute__((used)) static void end_msc_irq(unsigned int irq)
{
 if (!(irq_desc[irq].status & (IRQ_DISABLED|IRQ_INPROGRESS)))
  unmask_msc_irq(irq);
}
