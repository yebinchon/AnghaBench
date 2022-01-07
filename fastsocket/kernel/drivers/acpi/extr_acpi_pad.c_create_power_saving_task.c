
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ kthread_run (int ,void*,char*,size_t) ;
 int power_saving_thread ;
 size_t ps_tsk_num ;
 scalar_t__* ps_tsks ;

__attribute__((used)) static int create_power_saving_task(void)
{
 ps_tsks[ps_tsk_num] = kthread_run(power_saving_thread,
  (void *)(unsigned long)ps_tsk_num,
  "power_saving/%d", ps_tsk_num);
 if (ps_tsks[ps_tsk_num]) {
  ps_tsk_num++;
  return 0;
 }
 return -EINVAL;
}
