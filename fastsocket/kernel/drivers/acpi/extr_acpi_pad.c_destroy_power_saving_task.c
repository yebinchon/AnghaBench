
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kthread_stop (int ) ;
 size_t ps_tsk_num ;
 int * ps_tsks ;

__attribute__((used)) static void destroy_power_saving_task(void)
{
 if (ps_tsk_num > 0) {
  ps_tsk_num--;
  kthread_stop(ps_tsks[ps_tsk_num]);
 }
}
