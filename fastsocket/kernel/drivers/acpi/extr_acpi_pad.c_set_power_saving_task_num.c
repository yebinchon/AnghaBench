
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ create_power_saving_task () ;
 int destroy_power_saving_task () ;
 unsigned int ps_tsk_num ;

__attribute__((used)) static void set_power_saving_task_num(unsigned int num)
{
 if (num > ps_tsk_num) {
  while (ps_tsk_num < num) {
   if (create_power_saving_task())
    return;
  }
 } else if (num < ps_tsk_num) {
  while (ps_tsk_num > num)
   destroy_power_saving_task();
 }
}
