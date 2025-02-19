
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int * bcm1480_irq_owner ;
 int bcm1480_unmask_irq (int ,unsigned int) ;
 TYPE_1__* irq_desc ;

__attribute__((used)) static void end_bcm1480_irq(unsigned int irq)
{
 if (!(irq_desc[irq].status & (IRQ_DISABLED | IRQ_INPROGRESS))) {
  bcm1480_unmask_irq(bcm1480_irq_owner[irq], irq);
 }
}
