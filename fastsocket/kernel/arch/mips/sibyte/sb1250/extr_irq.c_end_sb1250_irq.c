
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 TYPE_1__* irq_desc ;
 int * sb1250_irq_owner ;
 int sb1250_unmask_irq (int ,unsigned int) ;

__attribute__((used)) static void end_sb1250_irq(unsigned int irq)
{
 if (!(irq_desc[irq].status & (IRQ_DISABLED | IRQ_INPROGRESS))) {
  sb1250_unmask_irq(sb1250_irq_owner[irq], irq);
 }
}
