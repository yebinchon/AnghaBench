
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int current_pstate; int turbo_pstate; } ;
struct cpudata {size_t sample_ptr; TYPE_2__ pstate; TYPE_1__* samples; } ;
typedef int int32_t ;
struct TYPE_3__ {int core_pct_busy; } ;


 int div_fp (int ,int ) ;
 int fp_toint (int ) ;
 int int_tofp (int ) ;
 int mul_fp (int ,int ) ;

__attribute__((used)) static inline int intel_pstate_get_scaled_busy(struct cpudata *cpu)
{
 int32_t busy_scaled;
 int32_t core_busy, turbo_pstate, current_pstate;

 core_busy = int_tofp(cpu->samples[cpu->sample_ptr].core_pct_busy);
 turbo_pstate = int_tofp(cpu->pstate.turbo_pstate);
 current_pstate = int_tofp(cpu->pstate.current_pstate);
 busy_scaled = mul_fp(core_busy, div_fp(turbo_pstate, current_pstate));

 return fp_toint(busy_scaled);
}
