
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpudata {TYPE_1__* pstate_policy; int idle_pid; } ;
struct TYPE_2__ {int deadband; int i_gain_pct; int d_gain_pct; int p_gain_pct; } ;


 int pid_d_gain_set (int *,int ) ;
 int pid_i_gain_set (int *,int ) ;
 int pid_p_gain_set (int *,int ) ;
 int pid_reset (int *,int,int,int ,int ) ;

__attribute__((used)) static inline void intel_pstate_idle_pid_reset(struct cpudata *cpu)
{
 pid_p_gain_set(&cpu->idle_pid, cpu->pstate_policy->p_gain_pct);
 pid_d_gain_set(&cpu->idle_pid, cpu->pstate_policy->d_gain_pct);
 pid_i_gain_set(&cpu->idle_pid, cpu->pstate_policy->i_gain_pct);

 pid_reset(&cpu->idle_pid,
  75,
  50,
  cpu->pstate_policy->deadband,
  0);
}
