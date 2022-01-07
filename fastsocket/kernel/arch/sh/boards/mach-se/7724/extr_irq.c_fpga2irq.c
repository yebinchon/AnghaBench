
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ0_BASE ;
 unsigned int IRQ0_END ;
 unsigned int IRQ0_IRQ ;
 unsigned int IRQ1_BASE ;
 unsigned int IRQ1_END ;
 unsigned int IRQ1_IRQ ;
 unsigned int IRQ2_IRQ ;

__attribute__((used)) static unsigned int fpga2irq(unsigned int irq)
{
 if (irq >= IRQ0_BASE &&
     irq <= IRQ0_END)
  return IRQ0_IRQ;
 else if (irq >= IRQ1_BASE &&
   irq <= IRQ1_END)
  return IRQ1_IRQ;
 else
  return IRQ2_IRQ;
}
