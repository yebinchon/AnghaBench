
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idle_with_irq_disabled () ;

__attribute__((weak))
void native_machine_halt(void)
{
 idle_with_irq_disabled();
}
