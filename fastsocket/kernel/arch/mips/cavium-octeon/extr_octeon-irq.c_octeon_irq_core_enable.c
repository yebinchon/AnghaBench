
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int OCTEON_IRQ_SW0 ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_c0_status (int) ;

__attribute__((used)) static void octeon_irq_core_enable(unsigned int irq)
{
 unsigned long flags;
 unsigned int bit = irq - OCTEON_IRQ_SW0;





 local_irq_save(flags);
 set_c0_status(0x100 << bit);
 local_irq_restore(flags);
}
