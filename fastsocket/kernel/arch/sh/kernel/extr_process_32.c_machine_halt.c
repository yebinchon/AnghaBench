
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_sleep () ;
 int local_irq_disable () ;

void machine_halt(void)
{
 local_irq_disable();

 while (1)
  cpu_sleep();
}
