
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_CPU_FANS ;
 scalar_t__* cpu_fans ;
 scalar_t__ cpufreq_clamp ;
 int wf_control_set_max (scalar_t__) ;

__attribute__((used)) static void cpu_max_all_fans(void)
{
 int i;





 if (cpufreq_clamp)
  wf_control_set_max(cpufreq_clamp);
 for (i = 0; i < NR_CPU_FANS; ++i)
  if (cpu_fans[i])
   wf_control_set_max(cpu_fans[i]);
}
