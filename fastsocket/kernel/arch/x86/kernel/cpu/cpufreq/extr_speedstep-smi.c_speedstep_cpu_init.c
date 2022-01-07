
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int transition_latency; } ;
struct cpufreq_policy {scalar_t__ cpu; unsigned int cur; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {unsigned int frequency; } ;


 int CPUFREQ_ETERNAL ;
 int EINVAL ;
 int ENODEV ;
 size_t SPEEDSTEP_HIGH ;
 size_t SPEEDSTEP_LOW ;
 int cpufreq_frequency_table_cpuinfo (struct cpufreq_policy*,TYPE_2__*) ;
 int cpufreq_frequency_table_get_attr (TYPE_2__*,scalar_t__) ;
 int dprintk (char*,...) ;
 TYPE_2__* speedstep_freqs ;
 int speedstep_get_freqs (int ,unsigned int*,unsigned int*,int *,int *) ;
 unsigned int speedstep_get_state () ;
 int speedstep_processor ;
 int speedstep_set_state ;
 int speedstep_smi_get_freqs (unsigned int*,unsigned int*) ;
 int speedstep_smi_ownership () ;

__attribute__((used)) static int speedstep_cpu_init(struct cpufreq_policy *policy)
{
 int result;
 unsigned int speed, state;
 unsigned int *low, *high;


 if (policy->cpu != 0)
  return -ENODEV;

 result = speedstep_smi_ownership();
 if (result) {
  dprintk("fails in aquiring ownership of a SMI interface.\n");
  return -EINVAL;
 }


 low = &speedstep_freqs[SPEEDSTEP_LOW].frequency;
 high = &speedstep_freqs[SPEEDSTEP_HIGH].frequency;

 result = speedstep_smi_get_freqs(low, high);
 if (result) {


  dprintk("could not detect low and high frequencies "
    "by SMI call.\n");
  result = speedstep_get_freqs(speedstep_processor,
    low, high,
    ((void*)0),
    &speedstep_set_state);

  if (result) {
   dprintk("could not detect two different speeds"
     " -- aborting.\n");
   return result;
  } else
   dprintk("workaround worked.\n");
 }


 state = speedstep_get_state();
 speed = speedstep_freqs[state].frequency;

 dprintk("currently at %s speed setting - %i MHz\n",
  (speed == speedstep_freqs[SPEEDSTEP_LOW].frequency)
  ? "low" : "high",
  (speed / 1000));


 policy->cpuinfo.transition_latency = CPUFREQ_ETERNAL;
 policy->cur = speed;

 result = cpufreq_frequency_table_cpuinfo(policy, speedstep_freqs);
 if (result)
  return result;

 cpufreq_frequency_table_get_attr(speedstep_freqs, policy->cpu);

 return 0;
}
