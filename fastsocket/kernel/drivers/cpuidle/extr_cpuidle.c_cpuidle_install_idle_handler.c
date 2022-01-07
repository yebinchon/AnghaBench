
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpuidle_idle_call ;
 scalar_t__ enabled_devices ;
 scalar_t__ pm_idle ;
 int smp_wmb () ;

void cpuidle_install_idle_handler(void)
{
 if (enabled_devices && (pm_idle != cpuidle_idle_call)) {

  smp_wmb();
  pm_idle = cpuidle_idle_call;
 }
}
