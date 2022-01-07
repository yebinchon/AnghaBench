
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MCFINTC0_SIMR ;
 scalar_t__ MCFINTC1_SIMR ;
 unsigned int MCFINT_VECBASE ;
 int __raw_writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static void intc_irq_mask(unsigned int irq)
{
 if (irq >= MCFINT_VECBASE) {
  if (irq < MCFINT_VECBASE + 64)
   __raw_writeb(irq - MCFINT_VECBASE, MCFINTC0_SIMR);
  else if ((irq < MCFINT_VECBASE + 128) && MCFINTC1_SIMR)
   __raw_writeb(irq - MCFINT_VECBASE - 64, MCFINTC1_SIMR);
 }
}
