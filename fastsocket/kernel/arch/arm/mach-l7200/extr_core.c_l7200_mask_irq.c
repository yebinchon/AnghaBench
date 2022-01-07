
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_ENABLECLEAR ;

__attribute__((used)) static void l7200_mask_irq(unsigned int irq)
{
 IRQ_ENABLECLEAR = 1 << irq;
}
