
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int eiger_enable_irq (unsigned int) ;
 TYPE_1__* irq_desc ;

__attribute__((used)) static void
eiger_end_irq(unsigned int irq)
{
 if (!(irq_desc[irq].status & (IRQ_DISABLED|IRQ_INPROGRESS)))
  eiger_enable_irq(irq);
}
