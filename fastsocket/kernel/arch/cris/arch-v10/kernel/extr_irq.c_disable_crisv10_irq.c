
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mask_irq (unsigned int) ;

__attribute__((used)) static void disable_crisv10_irq(unsigned int irq)
{
 mask_irq(irq);
}
