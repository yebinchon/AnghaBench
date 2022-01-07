
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rm9k_cpu_irq_enable (unsigned int) ;

__attribute__((used)) static void local_rm9k_perfcounter_irq_startup(void *args)
{
 unsigned int irq = (unsigned int) args;

 rm9k_cpu_irq_enable(irq);
}
