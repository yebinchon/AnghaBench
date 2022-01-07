
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_need_resched () ;

void smp_reschedule_irq(void)
{
 set_need_resched();
}
