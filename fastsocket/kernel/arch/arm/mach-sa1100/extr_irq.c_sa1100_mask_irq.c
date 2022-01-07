
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICMR ;

__attribute__((used)) static void sa1100_mask_irq(unsigned int irq)
{
 ICMR &= ~(1 << irq);
}
