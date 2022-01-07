
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 scalar_t__ IAR ;
 scalar_t__ INTC_BASE ;
 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int IRQ_LEVEL ;
 scalar_t__ SIE ;
 TYPE_1__* irq_desc ;
 int out_be32 (scalar_t__,unsigned long) ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static void intc_end(unsigned int irq)
{
 unsigned long mask = 1 << irq;
 pr_debug("end: %d\n", irq);
 if (!(irq_desc[irq].status & (IRQ_DISABLED | IRQ_INPROGRESS))) {
  out_be32(INTC_BASE + SIE, mask);

  if (irq_desc[irq].status & IRQ_LEVEL)
   out_be32(INTC_BASE + IAR, mask);
 }
}
