
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 unsigned long* cpu_irq_affinity ;
 scalar_t__ cpu_isset (int,int ) ;

__attribute__((used)) static void
cpu_set_irq_affinity(unsigned int irq, cpumask_t affinity)
{
 int cpu;

 for (cpu = 0; cpu < 4; cpu++) {
  unsigned long aff = cpu_irq_affinity[cpu];
  if (cpu_isset(cpu, affinity))
   aff |= 1UL << irq;
  else
   aff &= ~(1UL << irq);
  cpu_irq_affinity[cpu] = aff;
 }
}
