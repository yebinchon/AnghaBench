
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_CPU_FANS ;
 scalar_t__ backside_fan ;
 scalar_t__* cpu_fans ;
 scalar_t__ cpufreq_clamp ;
 scalar_t__ drive_bay_fan ;
 scalar_t__ slots_fan ;
 int wf_control_set_max (scalar_t__) ;

__attribute__((used)) static void set_fail_state(void)
{
 int i;

 if (cpufreq_clamp)
  wf_control_set_max(cpufreq_clamp);
 for (i = 0; i < NR_CPU_FANS; ++i)
  if (cpu_fans[i])
   wf_control_set_max(cpu_fans[i]);
 if (backside_fan)
  wf_control_set_max(backside_fan);
 if (slots_fan)
  wf_control_set_max(slots_fan);
 if (drive_bay_fan)
  wf_control_set_max(drive_bay_fan);
}
