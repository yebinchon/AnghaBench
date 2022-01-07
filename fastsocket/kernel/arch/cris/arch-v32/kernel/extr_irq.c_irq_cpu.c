
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu; int mask; } ;


 int CPU_FIXED ;
 int FIRST_IRQ ;
 scalar_t__ cpu_isset (int,int ) ;
 int first_cpu (int ) ;
 TYPE_1__* irq_allocations ;
 int irq_lock ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int irq_cpu(int irq)
{
 int cpu;
        unsigned long flags;

        spin_lock_irqsave(&irq_lock, flags);
        cpu = irq_allocations[irq - FIRST_IRQ].cpu;


 if (cpu == CPU_FIXED)
        {
  spin_unlock_irqrestore(&irq_lock, flags);
  return smp_processor_id();
        }



 if (cpu_isset(cpu, irq_allocations[irq - FIRST_IRQ].mask))
  goto out;


 cpu = first_cpu(irq_allocations[irq - FIRST_IRQ].mask);
 irq_allocations[irq - FIRST_IRQ].cpu = cpu;
out:
 spin_unlock_irqrestore(&irq_lock, flags);
 return cpu;
}
