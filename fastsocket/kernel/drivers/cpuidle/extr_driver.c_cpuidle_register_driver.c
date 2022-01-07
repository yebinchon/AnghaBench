
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct cpuidle_driver* cpuidle_curr_driver ;
 int cpuidle_driver_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int cpuidle_register_driver(struct cpuidle_driver *drv)
{
 if (!drv)
  return -EINVAL;

 spin_lock(&cpuidle_driver_lock);
 if (cpuidle_curr_driver) {
  spin_unlock(&cpuidle_driver_lock);
  return -EBUSY;
 }
 cpuidle_curr_driver = drv;
 spin_unlock(&cpuidle_driver_lock);

 return 0;
}
