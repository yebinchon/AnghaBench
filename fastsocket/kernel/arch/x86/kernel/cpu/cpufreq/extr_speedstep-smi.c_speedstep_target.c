
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {scalar_t__ old; scalar_t__ new; scalar_t__ cpu; } ;
struct TYPE_3__ {scalar_t__ frequency; } ;


 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int EINVAL ;
 scalar_t__ cpufreq_frequency_table_target (struct cpufreq_policy*,TYPE_1__*,unsigned int,unsigned int,unsigned int*) ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 TYPE_1__* speedstep_freqs ;
 size_t speedstep_get_state () ;
 int speedstep_set_state (unsigned int) ;

__attribute__((used)) static int speedstep_target(struct cpufreq_policy *policy,
   unsigned int target_freq, unsigned int relation)
{
 unsigned int newstate = 0;
 struct cpufreq_freqs freqs;

 if (cpufreq_frequency_table_target(policy, &speedstep_freqs[0],
    target_freq, relation, &newstate))
  return -EINVAL;

 freqs.old = speedstep_freqs[speedstep_get_state()].frequency;
 freqs.new = speedstep_freqs[newstate].frequency;
 freqs.cpu = 0;

 if (freqs.old == freqs.new)
  return 0;

 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);
 speedstep_set_state(newstate);
 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);

 return 0;
}
