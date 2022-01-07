
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct cpufreq_policy {int cpu; } ;
struct acpi_processor {TYPE_2__* performance; scalar_t__ performance_platform_limit; } ;
struct TYPE_4__ {unsigned int state_count; TYPE_1__* states; } ;
struct TYPE_3__ {int core_frequency; } ;


 unsigned long CPUFREQ_INCOMPATIBLE ;
 unsigned long CPUFREQ_START ;
 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int) ;
 scalar_t__ ignore_ppc ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct acpi_processor* per_cpu (int ,int ) ;
 int performance_mutex ;
 int processors ;

__attribute__((used)) static int acpi_processor_ppc_notifier(struct notifier_block *nb,
           unsigned long event, void *data)
{
 struct cpufreq_policy *policy = data;
 struct acpi_processor *pr;
 unsigned int ppc = 0;

 if (event == CPUFREQ_START && ignore_ppc <= 0) {
  ignore_ppc = 0;
  return 0;
 }

 if (ignore_ppc)
  return 0;

 if (event != CPUFREQ_INCOMPATIBLE)
  return 0;

 mutex_lock(&performance_mutex);

 pr = per_cpu(processors, policy->cpu);
 if (!pr || !pr->performance)
  goto out;

 ppc = (unsigned int)pr->performance_platform_limit;

 if (ppc >= pr->performance->state_count)
  goto out;

 cpufreq_verify_within_limits(policy, 0,
         pr->performance->states[ppc].
         core_frequency * 1000);

      out:
 mutex_unlock(&performance_mutex);

 return 0;
}
