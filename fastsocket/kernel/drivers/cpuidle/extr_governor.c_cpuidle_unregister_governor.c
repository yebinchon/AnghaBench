
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_governor {int governor_list; int rating; } ;


 struct cpuidle_governor* cpuidle_curr_governor ;
 int cpuidle_lock ;
 struct cpuidle_governor* cpuidle_replace_governor (int ) ;
 int cpuidle_switch_governor (struct cpuidle_governor*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cpuidle_unregister_governor(struct cpuidle_governor *gov)
{
 if (!gov)
  return;

 mutex_lock(&cpuidle_lock);
 if (gov == cpuidle_curr_governor) {
  struct cpuidle_governor *new_gov;
  new_gov = cpuidle_replace_governor(gov->rating);
  cpuidle_switch_governor(new_gov);
 }
 list_del(&gov->governor_list);
 mutex_unlock(&cpuidle_lock);
}
