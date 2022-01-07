
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {TYPE_1__* governor; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* store_setspeed ) (struct cpufreq_policy*,unsigned int) ;} ;


 size_t EINVAL ;
 unsigned int sscanf (char const*,char*,unsigned int*) ;
 int stub1 (struct cpufreq_policy*,unsigned int) ;

__attribute__((used)) static ssize_t store_scaling_setspeed(struct cpufreq_policy *policy,
     const char *buf, size_t count)
{
 unsigned int freq = 0;
 unsigned int ret;

 if (!policy->governor || !policy->governor->store_setspeed)
  return -EINVAL;

 ret = sscanf(buf, "%u", &freq);
 if (ret != 1)
  return -EINVAL;

 policy->governor->store_setspeed(policy, freq);

 return count;
}
