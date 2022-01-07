
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_power_states; scalar_t__ pm_method; scalar_t__ power_state; int dynpm_idle_work; int mutex; int dynpm_planned_action; int dynpm_state; int profile; } ;
struct radeon_device {TYPE_1__ pm; int dev; } ;


 int DYNPM_ACTION_DEFAULT ;
 int DYNPM_STATE_DISABLED ;
 scalar_t__ PM_METHOD_DYNPM ;
 scalar_t__ PM_METHOD_PROFILE ;
 int PM_PROFILE_DEFAULT ;
 int cancel_delayed_work_sync (int *) ;
 int dev_attr_power_method ;
 int dev_attr_power_profile ;
 int device_remove_file (int ,int *) ;
 int kfree (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_hwmon_fini (struct radeon_device*) ;
 int radeon_pm_set_clocks (struct radeon_device*) ;
 int radeon_pm_update_profile (struct radeon_device*) ;

void radeon_pm_fini(struct radeon_device *rdev)
{
 if (rdev->pm.num_power_states > 1) {
  mutex_lock(&rdev->pm.mutex);
  if (rdev->pm.pm_method == PM_METHOD_PROFILE) {
   rdev->pm.profile = PM_PROFILE_DEFAULT;
   radeon_pm_update_profile(rdev);
   radeon_pm_set_clocks(rdev);
  } else if (rdev->pm.pm_method == PM_METHOD_DYNPM) {

   rdev->pm.dynpm_state = DYNPM_STATE_DISABLED;
   rdev->pm.dynpm_planned_action = DYNPM_ACTION_DEFAULT;
   radeon_pm_set_clocks(rdev);
  }
  mutex_unlock(&rdev->pm.mutex);

  cancel_delayed_work_sync(&rdev->pm.dynpm_idle_work);

  device_remove_file(rdev->dev, &dev_attr_power_profile);
  device_remove_file(rdev->dev, &dev_attr_power_method);
 }

 if (rdev->pm.power_state)
  kfree(rdev->pm.power_state);

 radeon_hwmon_fini(rdev);
}
