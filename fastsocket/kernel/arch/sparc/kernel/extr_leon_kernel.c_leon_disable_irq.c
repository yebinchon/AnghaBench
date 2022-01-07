
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LEON3_BYPASS_LOAD_PA (int ) ;
 int LEON3_BYPASS_STORE_PA (int ,unsigned long) ;
 int LEON_IMASK ;
 unsigned long get_irqmask (unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void leon_disable_irq(unsigned int irq_nr)
{
 unsigned long mask, flags;
 mask = get_irqmask(irq_nr);
 local_irq_save(flags);
 LEON3_BYPASS_STORE_PA(LEON_IMASK,
         (LEON3_BYPASS_LOAD_PA(LEON_IMASK) & ~(mask)));
 local_irq_restore(flags);

}
