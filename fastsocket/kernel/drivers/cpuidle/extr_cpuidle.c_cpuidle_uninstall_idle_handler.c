
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuidle_kick_cpus () ;
 scalar_t__ enabled_devices ;
 scalar_t__ pm_idle ;
 scalar_t__ pm_idle_old ;

void cpuidle_uninstall_idle_handler(void)
{
 if (enabled_devices && pm_idle_old && (pm_idle != pm_idle_old)) {
  pm_idle = pm_idle_old;
  cpuidle_kick_cpus();
 }
}
