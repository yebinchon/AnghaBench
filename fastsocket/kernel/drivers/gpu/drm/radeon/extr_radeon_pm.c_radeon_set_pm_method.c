
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dynpm_idle_work; int mutex; int pm_method; int dynpm_planned_action; int dynpm_state; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DYNPM_ACTION_DEFAULT ;
 int DYNPM_ACTION_NONE ;
 int DYNPM_STATE_DISABLED ;
 int DYNPM_STATE_PAUSED ;
 size_t EINVAL ;
 int PM_METHOD_DYNPM ;
 int PM_METHOD_PROFILE ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_device* pci_get_drvdata (int ) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t radeon_set_pm_method(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t count)
{
 struct drm_device *ddev = pci_get_drvdata(to_pci_dev(dev));
 struct radeon_device *rdev = ddev->dev_private;


 if (strncmp("dynpm", buf, strlen("dynpm")) == 0) {
  mutex_lock(&rdev->pm.mutex);
  rdev->pm.pm_method = PM_METHOD_DYNPM;
  rdev->pm.dynpm_state = DYNPM_STATE_PAUSED;
  rdev->pm.dynpm_planned_action = DYNPM_ACTION_DEFAULT;
  mutex_unlock(&rdev->pm.mutex);
 } else if (strncmp("profile", buf, strlen("profile")) == 0) {
  mutex_lock(&rdev->pm.mutex);

  rdev->pm.dynpm_state = DYNPM_STATE_DISABLED;
  rdev->pm.dynpm_planned_action = DYNPM_ACTION_NONE;
  rdev->pm.pm_method = PM_METHOD_PROFILE;
  mutex_unlock(&rdev->pm.mutex);
  cancel_delayed_work_sync(&rdev->pm.dynpm_idle_work);
 } else {
  count = -EINVAL;
  goto fail;
 }
 radeon_pm_compute_clocks(rdev);
fail:
 return count;
}
