
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_governor {scalar_t__ rating; int governor_list; int name; int select; } ;
struct TYPE_2__ {scalar_t__ rating; } ;


 int EEXIST ;
 int EINVAL ;
 int * __cpuidle_find_governor (int ) ;
 TYPE_1__* cpuidle_curr_governor ;
 int cpuidle_governors ;
 int cpuidle_lock ;
 int cpuidle_switch_governor (struct cpuidle_governor*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cpuidle_register_governor(struct cpuidle_governor *gov)
{
 int ret = -EEXIST;

 if (!gov || !gov->select)
  return -EINVAL;

 mutex_lock(&cpuidle_lock);
 if (__cpuidle_find_governor(gov->name) == ((void*)0)) {
  ret = 0;
  list_add_tail(&gov->governor_list, &cpuidle_governors);
  if (!cpuidle_curr_governor ||
      cpuidle_curr_governor->rating < gov->rating)
   cpuidle_switch_governor(gov);
 }
 mutex_unlock(&cpuidle_lock);

 return ret;
}
