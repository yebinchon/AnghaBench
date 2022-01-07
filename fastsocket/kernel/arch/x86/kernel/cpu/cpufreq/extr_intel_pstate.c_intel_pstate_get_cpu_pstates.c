
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_pstate; int turbo_pstate; int min_pstate; } ;
struct cpudata {TYPE_1__ pstate; int name; } ;


 int intel_pstate_max_pstate () ;
 int intel_pstate_min_pstate () ;
 int intel_pstate_set_pstate (struct cpudata*,int ) ;
 int intel_pstate_turbo_pstate () ;
 int sprintf (int ,char*) ;

__attribute__((used)) static void intel_pstate_get_cpu_pstates(struct cpudata *cpu)
{
 sprintf(cpu->name, "Intel 2nd generation core");

 cpu->pstate.min_pstate = intel_pstate_min_pstate();
 cpu->pstate.max_pstate = intel_pstate_max_pstate();
 cpu->pstate.turbo_pstate = intel_pstate_turbo_pstate();





 intel_pstate_set_pstate(cpu, cpu->pstate.max_pstate);
}
