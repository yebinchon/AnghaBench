
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MCFINTC0_ICR0 ;
 unsigned int MCFINTC1_ICR0 ;
 unsigned int MCFINT_VECBASE ;
 int __raw_writeb (int,unsigned int) ;

__attribute__((used)) static int intc_irq_set_type(unsigned int irq, unsigned int type)
{
 if (irq >= MCFINT_VECBASE) {
  if (irq < MCFINT_VECBASE + 64)
   __raw_writeb(5, MCFINTC0_ICR0 + irq - MCFINT_VECBASE);
  else if ((irq < MCFINT_VECBASE) && MCFINTC1_ICR0)
   __raw_writeb(5, MCFINTC1_ICR0 + irq - MCFINT_VECBASE - 64);
 }
 return 0;
}
