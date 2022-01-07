
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_device {scalar_t__ enabled; } ;
struct TYPE_2__ {int (* disable ) (struct cpuidle_device*) ;} ;


 TYPE_1__* cpuidle_curr_governor ;
 int cpuidle_get_driver () ;
 int cpuidle_remove_state_sysfs (struct cpuidle_device*) ;
 int enabled_devices ;
 int stub1 (struct cpuidle_device*) ;

void cpuidle_disable_device(struct cpuidle_device *dev)
{
 if (!dev->enabled)
  return;
 if (!cpuidle_get_driver() || !cpuidle_curr_governor)
  return;

 dev->enabled = 0;

 if (cpuidle_curr_governor->disable)
  cpuidle_curr_governor->disable(dev);

 cpuidle_remove_state_sysfs(dev);
 enabled_devices--;
}
