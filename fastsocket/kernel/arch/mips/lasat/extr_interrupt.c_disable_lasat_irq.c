
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LASAT_IRQ_BASE ;
 int* lasat_int_mask ;
 int lasat_int_mask_shift ;

void disable_lasat_irq(unsigned int irq_nr)
{
 irq_nr -= LASAT_IRQ_BASE;
 *lasat_int_mask &= ~(1 << irq_nr) << lasat_int_mask_shift;
}
