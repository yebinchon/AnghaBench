
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int name; } ;


 struct wf_control* cpufreq_clamp ;
 struct wf_control* fan_cpu_main ;
 struct wf_control* fan_hd ;
 struct wf_control* fan_system ;
 int strcmp (int ,char*) ;
 scalar_t__ wf_get_control (struct wf_control*) ;
 int wf_smu_all_controls_ok ;
 int wf_smu_mach_model ;

__attribute__((used)) static void wf_smu_new_control(struct wf_control *ct)
{
 if (wf_smu_all_controls_ok)
  return;

 if (fan_cpu_main == ((void*)0) && !strcmp(ct->name, "cpu-fan")) {
  if (wf_get_control(ct) == 0)
   fan_cpu_main = ct;
 }

 if (fan_system == ((void*)0) && !strcmp(ct->name, "system-fan")) {
  if (wf_get_control(ct) == 0)
   fan_system = ct;
 }

 if (cpufreq_clamp == ((void*)0) && !strcmp(ct->name, "cpufreq-clamp")) {
  if (wf_get_control(ct) == 0)
   cpufreq_clamp = ct;
 }





 if (wf_smu_mach_model > 3) {
  if (fan_system && fan_cpu_main && cpufreq_clamp)
   wf_smu_all_controls_ok = 1;
  return;
 }

 if (fan_hd == ((void*)0) && !strcmp(ct->name, "drive-bay-fan")) {
  if (wf_get_control(ct) == 0)
   fan_hd = ct;
 }

 if (fan_system && fan_hd && fan_cpu_main && cpufreq_clamp)
  wf_smu_all_controls_ok = 1;
}
