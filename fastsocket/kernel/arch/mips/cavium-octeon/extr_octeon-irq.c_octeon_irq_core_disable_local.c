
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int OCTEON_IRQ_SW0 ;
 int clear_c0_status (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void octeon_irq_core_disable_local(unsigned int irq)
{
 unsigned long flags;
 unsigned int bit = irq - OCTEON_IRQ_SW0;




 local_irq_save(flags);
 clear_c0_status(0x100 << bit);
 local_irq_restore(flags);
}
