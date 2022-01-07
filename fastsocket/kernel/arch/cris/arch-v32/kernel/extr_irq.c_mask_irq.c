
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_CPUS ;
 int block_irq (int,int) ;

void
mask_irq(int irq)
{
 int cpu;

 for (cpu = 0; cpu < NR_CPUS; cpu++)
  block_irq(irq, cpu);
}
