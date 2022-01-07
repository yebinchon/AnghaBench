
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_pstate; scalar_t__ min_pstate; int max_pstate; } ;
struct cpudata {int min_pstate_count; TYPE_1__ pstate; int idle_mode; } ;


 int intel_pstate_adjust_busy_pstate (struct cpudata*) ;
 int intel_pstate_adjust_idle_pstate (struct cpudata*) ;
 int intel_pstate_idle_mode (struct cpudata*) ;
 int intel_pstate_sample (struct cpudata*) ;
 int intel_pstate_set_pstate (struct cpudata*,int ) ;
 int intel_pstate_set_sample_time (struct cpudata*) ;

__attribute__((used)) static void intel_pstate_timer_func(unsigned long __data)
{
 struct cpudata *cpu = (struct cpudata *) __data;

 intel_pstate_sample(cpu);

 if (!cpu->idle_mode)
  intel_pstate_adjust_busy_pstate(cpu);
 else
  intel_pstate_adjust_idle_pstate(cpu);
 intel_pstate_set_sample_time(cpu);
}
