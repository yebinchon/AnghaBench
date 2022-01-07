
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mask_set; } ;
struct TYPE_3__ {int set; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sbus_writel (unsigned long,int *) ;
 int smp_processor_id () ;
 unsigned long sun4m_get_irqmask (unsigned int) ;
 TYPE_2__* sun4m_irq_global ;
 TYPE_1__** sun4m_irq_percpu ;

__attribute__((used)) static void sun4m_disable_irq(unsigned int irq_nr)
{
 unsigned long mask, flags;
 int cpu = smp_processor_id();

 mask = sun4m_get_irqmask(irq_nr);
 local_irq_save(flags);
 if (irq_nr > 15)
  sbus_writel(mask, &sun4m_irq_global->mask_set);
 else
  sbus_writel(mask, &sun4m_irq_percpu[cpu]->set);
 local_irq_restore(flags);
}
