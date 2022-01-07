
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_control {int dummy; } ;


 int CPUFREQ ;
 int FAN_CPU ;
 int FAN_HD ;
 int FAN_OD ;
 int pm121_all_controls_ok ;
 scalar_t__ pm121_register_control (struct wf_control*,char*,int ) ;

__attribute__((used)) static void pm121_new_control(struct wf_control *ct)
{
 int all = 1;

 if (pm121_all_controls_ok)
  return;

 all = pm121_register_control(ct, "optical-drive-fan", FAN_OD) && all;
 all = pm121_register_control(ct, "hard-drive-fan", FAN_HD) && all;
 all = pm121_register_control(ct, "cpu-fan", FAN_CPU) && all;
 all = pm121_register_control(ct, "cpufreq-clamp", CPUFREQ) && all;

 if (all)
  pm121_all_controls_ok = 1;
}
