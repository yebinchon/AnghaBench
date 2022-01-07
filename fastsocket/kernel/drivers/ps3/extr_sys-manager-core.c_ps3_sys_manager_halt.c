
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int lv1_pause (int) ;
 int pr_emerg (char*) ;

void ps3_sys_manager_halt(void)
{
 pr_emerg("System Halted, OK to turn off power\n");
 local_irq_disable();
 while (1)
  lv1_pause(1);
}
