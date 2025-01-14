
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int governor; int policy; int max; int min; } ;
struct cpufreq_policy {scalar_t__ cur; TYPE_1__ user_policy; int governor; int policy; int max; int min; } ;
struct TYPE_4__ {scalar_t__ (* get ) (unsigned int) ;} ;


 int EINVAL ;
 int ENODEV ;
 int __cpufreq_set_policy (struct cpufreq_policy*,struct cpufreq_policy*) ;
 struct cpufreq_policy* cpufreq_cpu_get (unsigned int) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 TYPE_2__* cpufreq_driver ;
 int cpufreq_out_of_sync (unsigned int,scalar_t__,scalar_t__) ;
 int dprintk (char*,...) ;
 int lock_policy_rwsem_write (unsigned int) ;
 int memcpy (struct cpufreq_policy*,struct cpufreq_policy*,int) ;
 scalar_t__ stub1 (unsigned int) ;
 scalar_t__ unlikely (int ) ;
 int unlock_policy_rwsem_write (unsigned int) ;

int cpufreq_update_policy(unsigned int cpu)
{
 struct cpufreq_policy *data = cpufreq_cpu_get(cpu);
 struct cpufreq_policy policy;
 int ret;

 if (!data) {
  ret = -ENODEV;
  goto no_policy;
 }

 if (unlikely(lock_policy_rwsem_write(cpu))) {
  ret = -EINVAL;
  goto fail;
 }

 dprintk("updating policy for CPU %u\n", cpu);
 memcpy(&policy, data, sizeof(struct cpufreq_policy));
 policy.min = data->user_policy.min;
 policy.max = data->user_policy.max;
 policy.policy = data->user_policy.policy;
 policy.governor = data->user_policy.governor;



 if (cpufreq_driver->get) {
  policy.cur = cpufreq_driver->get(cpu);
  if (!data->cur) {
   dprintk("Driver did not initialize current freq");
   data->cur = policy.cur;
  } else {
   if (data->cur != policy.cur)
    cpufreq_out_of_sync(cpu, data->cur,
        policy.cur);
  }
 }

 ret = __cpufreq_set_policy(data, &policy);

 unlock_policy_rwsem_write(cpu);

fail:
 cpufreq_cpu_put(data);
no_policy:
 return ret;
}
