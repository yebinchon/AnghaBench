
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int current_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;


 int intel_pstate_set_pstate (struct cpudata*,int) ;

__attribute__((used)) static inline void intel_pstate_pstate_increase(struct cpudata *cpu, int steps)
{
 int target;
 target = cpu->pstate.current_pstate + steps;

 intel_pstate_set_pstate(cpu, target);
}
