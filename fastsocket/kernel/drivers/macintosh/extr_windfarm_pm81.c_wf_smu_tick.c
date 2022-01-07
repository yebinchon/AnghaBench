
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG (char*) ;
 unsigned int FAILURE_OVERTEMP ;
 scalar_t__ cpufreq_clamp ;
 scalar_t__ fan_cpu_main ;
 scalar_t__ fan_hd ;
 scalar_t__ fan_system ;
 int wf_clear_overtemp () ;
 int wf_control_set_max (scalar_t__) ;
 int wf_control_set_min (scalar_t__) ;
 int wf_set_overtemp () ;
 scalar_t__ wf_smu_cpu_fans ;
 int wf_smu_cpu_fans_tick (scalar_t__) ;
 int wf_smu_create_cpu_fans () ;
 int wf_smu_create_sys_fans () ;
 unsigned int wf_smu_failure_state ;
 int wf_smu_readjust ;
 int wf_smu_skipping ;
 int wf_smu_started ;
 scalar_t__ wf_smu_sys_fans ;
 int wf_smu_sys_fans_tick (scalar_t__) ;

__attribute__((used)) static void wf_smu_tick(void)
{
 unsigned int last_failure = wf_smu_failure_state;
 unsigned int new_failure;

 if (!wf_smu_started) {
  DBG("wf: creating control loops !\n");
  wf_smu_create_sys_fans();
  wf_smu_create_cpu_fans();
  wf_smu_started = 1;
 }


 if (wf_smu_skipping && --wf_smu_skipping)
  return;

 wf_smu_failure_state = 0;
 if (wf_smu_sys_fans)
  wf_smu_sys_fans_tick(wf_smu_sys_fans);
 if (wf_smu_cpu_fans)
  wf_smu_cpu_fans_tick(wf_smu_cpu_fans);

 wf_smu_readjust = 0;
 new_failure = wf_smu_failure_state & ~last_failure;




 if (wf_smu_failure_state && !last_failure) {
  if (cpufreq_clamp)
   wf_control_set_max(cpufreq_clamp);
  if (fan_system)
   wf_control_set_max(fan_system);
  if (fan_cpu_main)
   wf_control_set_max(fan_cpu_main);
  if (fan_hd)
   wf_control_set_max(fan_hd);
 }




 if (!wf_smu_failure_state && last_failure) {
  if (cpufreq_clamp)
   wf_control_set_min(cpufreq_clamp);
  wf_smu_readjust = 1;
 }




 if (new_failure & FAILURE_OVERTEMP) {
  wf_set_overtemp();
  wf_smu_skipping = 2;
 }







 if (new_failure == 0 && last_failure & FAILURE_OVERTEMP)
  wf_clear_overtemp();
}
