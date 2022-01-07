
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfin_reset () ;
 int local_irq_disable () ;
 int native_machine_restart (char*) ;
 int smp_call_function (void*,int ,int) ;
 scalar_t__ smp_processor_id () ;

void machine_restart(char *cmd)
{
 native_machine_restart(cmd);
 local_irq_disable();
 if (smp_processor_id())
  smp_call_function((void *)bfin_reset, 0, 1);
 else
  bfin_reset();
}
