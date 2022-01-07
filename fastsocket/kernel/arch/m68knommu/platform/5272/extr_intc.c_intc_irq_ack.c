
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int index; scalar_t__ icr; scalar_t__ ack; } ;


 unsigned int MCFINT_VECBASE ;
 unsigned int MCFINT_VECMAX ;
 scalar_t__ MCF_MBAR ;
 TYPE_1__* intc_irqmap ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void intc_irq_ack(unsigned int irq)
{

 if ((irq >= MCFINT_VECBASE) && (irq <= MCFINT_VECMAX)) {
  irq -= MCFINT_VECBASE;
  if (intc_irqmap[irq].ack) {
   u32 v;
   v = 0xd << intc_irqmap[irq].index;
   writel(v, MCF_MBAR + intc_irqmap[irq].icr);
  }
 }
}
