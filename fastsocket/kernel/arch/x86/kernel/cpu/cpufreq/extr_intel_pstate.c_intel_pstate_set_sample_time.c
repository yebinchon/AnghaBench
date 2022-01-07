
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpudata {int timer; TYPE_1__* pstate_policy; } ;
struct TYPE_2__ {int sample_rate_ms; } ;


 scalar_t__ jiffies ;
 int mod_timer_pinned (int *,scalar_t__) ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static inline void intel_pstate_set_sample_time(struct cpudata *cpu)
{
 int sample_time, delay;

 sample_time = cpu->pstate_policy->sample_rate_ms;
 delay = msecs_to_jiffies(sample_time);
 mod_timer_pinned(&cpu->timer, jiffies + delay);
}
