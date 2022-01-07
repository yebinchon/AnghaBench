
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_governor {int governor_list; int name; } ;


 int EBUSY ;
 int EINVAL ;
 int * __find_governor (int ) ;
 int cpufreq_governor_list ;
 int cpufreq_governor_mutex ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cpufreq_register_governor(struct cpufreq_governor *governor)
{
 int err;

 if (!governor)
  return -EINVAL;

 mutex_lock(&cpufreq_governor_mutex);

 err = -EBUSY;
 if (__find_governor(governor->name) == ((void*)0)) {
  err = 0;
  list_add(&governor->governor_list, &cpufreq_governor_list);
 }

 mutex_unlock(&cpufreq_governor_mutex);
 return err;
}
