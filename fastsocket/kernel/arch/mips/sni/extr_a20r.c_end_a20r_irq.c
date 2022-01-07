
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int a20r_ack_hwint () ;
 TYPE_1__* irq_desc ;
 int unmask_a20r_irq (unsigned int) ;

__attribute__((used)) static void end_a20r_irq(unsigned int irq)
{
 if (!(irq_desc[irq].status & (IRQ_DISABLED | IRQ_INPROGRESS))) {
  a20r_ack_hwint();
  unmask_a20r_irq(irq);
 }
}
