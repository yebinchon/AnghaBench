
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int dummy; } ;


 int __cpuidle_register_device (struct cpuidle_device*) ;
 int cpuidle_enable_device (struct cpuidle_device*) ;
 int cpuidle_install_idle_handler () ;
 int cpuidle_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cpuidle_register_device(struct cpuidle_device *dev)
{
 int ret;

 mutex_lock(&cpuidle_lock);

 if ((ret = __cpuidle_register_device(dev))) {
  mutex_unlock(&cpuidle_lock);
  return ret;
 }

 cpuidle_enable_device(dev);
 cpuidle_install_idle_handler();

 mutex_unlock(&cpuidle_lock);

 return 0;

}
