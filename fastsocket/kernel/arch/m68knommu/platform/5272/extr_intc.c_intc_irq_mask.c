
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int index; scalar_t__ icr; } ;


 unsigned int MCFINT_VECBASE ;
 unsigned int MCFINT_VECMAX ;
 scalar_t__ MCF_MBAR ;
 TYPE_1__* intc_irqmap ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void intc_irq_mask(unsigned int irq)
{
 if ((irq >= MCFINT_VECBASE) && (irq <= MCFINT_VECMAX)) {
  u32 v;
  irq -= MCFINT_VECBASE;
  v = 0x8 << intc_irqmap[irq].index;
  writel(v, MCF_MBAR + intc_irqmap[irq].icr);
 }
}
