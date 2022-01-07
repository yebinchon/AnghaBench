
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;


 int * cpuidle_curr_driver ;
 int cpuidle_driver_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cpuidle_unregister_driver(struct cpuidle_driver *drv)
{
 if (!drv)
  return;

 spin_lock(&cpuidle_driver_lock);
 cpuidle_curr_driver = ((void*)0);
 spin_unlock(&cpuidle_driver_lock);
}
