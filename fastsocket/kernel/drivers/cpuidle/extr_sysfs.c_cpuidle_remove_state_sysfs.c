
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_device {int state_count; } ;


 int cpuidle_free_state_kobj (struct cpuidle_device*,int) ;

void cpuidle_remove_state_sysfs(struct cpuidle_device *device)
{
 int i;

 for (i = 0; i < device->state_count; i++)
  cpuidle_free_state_kobj(device, i);
}
