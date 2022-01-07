
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pm_method; scalar_t__ profile; int mutex; } ;
struct radeon_device {TYPE_1__ pm; } ;


 scalar_t__ PM_METHOD_PROFILE ;
 scalar_t__ PM_PROFILE_AUTO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_pm_set_clocks (struct radeon_device*) ;
 int radeon_pm_update_profile (struct radeon_device*) ;

void radeon_pm_acpi_event_handler(struct radeon_device *rdev)
{
 if (rdev->pm.pm_method == PM_METHOD_PROFILE) {
  if (rdev->pm.profile == PM_PROFILE_AUTO) {
   mutex_lock(&rdev->pm.mutex);
   radeon_pm_update_profile(rdev);
   radeon_pm_set_clocks(rdev);
   mutex_unlock(&rdev->pm.mutex);
  }
 }
}
