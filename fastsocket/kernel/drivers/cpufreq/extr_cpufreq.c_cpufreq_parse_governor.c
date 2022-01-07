
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_governor {int dummy; } ;
struct TYPE_2__ {scalar_t__ target; scalar_t__ setpolicy; } ;


 int CPUFREQ_NAME_LEN ;
 unsigned int CPUFREQ_POLICY_PERFORMANCE ;
 unsigned int CPUFREQ_POLICY_POWERSAVE ;
 int EINVAL ;
 int GFP_KERNEL ;
 struct cpufreq_governor* __find_governor (char*) ;
 TYPE_1__* cpufreq_driver ;
 int cpufreq_governor_mutex ;
 char* kasprintf (int ,char*,char*) ;
 int kfree (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_module (char*,char*) ;
 int strnicmp (char*,char*,int ) ;

__attribute__((used)) static int cpufreq_parse_governor(char *str_governor, unsigned int *policy,
    struct cpufreq_governor **governor)
{
 int err = -EINVAL;

 if (!cpufreq_driver)
  goto out;

 if (cpufreq_driver->setpolicy) {
  if (!strnicmp(str_governor, "performance", CPUFREQ_NAME_LEN)) {
   *policy = CPUFREQ_POLICY_PERFORMANCE;
   err = 0;
  } else if (!strnicmp(str_governor, "powersave",
      CPUFREQ_NAME_LEN)) {
   *policy = CPUFREQ_POLICY_POWERSAVE;
   err = 0;
  }
 } else if (cpufreq_driver->target) {
  struct cpufreq_governor *t;

  mutex_lock(&cpufreq_governor_mutex);

  t = __find_governor(str_governor);

  if (t == ((void*)0)) {
   char *name = kasprintf(GFP_KERNEL, "cpufreq_%s",
        str_governor);

   if (name) {
    int ret;

    mutex_unlock(&cpufreq_governor_mutex);
    ret = request_module("%s", name);
    mutex_lock(&cpufreq_governor_mutex);

    if (ret == 0)
     t = __find_governor(str_governor);
   }

   kfree(name);
  }

  if (t != ((void*)0)) {
   *governor = t;
   err = 0;
  }

  mutex_unlock(&cpufreq_governor_mutex);
 }
out:
 return err;
}
