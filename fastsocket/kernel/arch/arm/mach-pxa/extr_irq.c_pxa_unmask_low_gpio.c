
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICMR ;
 unsigned int PXA_IRQ (int ) ;

__attribute__((used)) static void pxa_unmask_low_gpio(unsigned int irq)
{
 ICMR |= 1 << (irq - PXA_IRQ(0));
}
