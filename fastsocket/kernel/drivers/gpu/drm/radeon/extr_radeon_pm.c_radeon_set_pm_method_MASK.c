#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dynpm_idle_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  pm_method; int /*<<< orphan*/  dynpm_planned_action; int /*<<< orphan*/  dynpm_state; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DYNPM_ACTION_DEFAULT ; 
 int /*<<< orphan*/  DYNPM_ACTION_NONE ; 
 int /*<<< orphan*/  DYNPM_STATE_DISABLED ; 
 int /*<<< orphan*/  DYNPM_STATE_PAUSED ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  PM_METHOD_DYNPM ; 
 int /*<<< orphan*/  PM_METHOD_PROFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf,
				    size_t count)
{
	struct drm_device *ddev = FUNC3(FUNC7(dev));
	struct radeon_device *rdev = ddev->dev_private;


	if (FUNC6("dynpm", buf, FUNC5("dynpm")) == 0) {
		FUNC1(&rdev->pm.mutex);
		rdev->pm.pm_method = PM_METHOD_DYNPM;
		rdev->pm.dynpm_state = DYNPM_STATE_PAUSED;
		rdev->pm.dynpm_planned_action = DYNPM_ACTION_DEFAULT;
		FUNC2(&rdev->pm.mutex);
	} else if (FUNC6("profile", buf, FUNC5("profile")) == 0) {
		FUNC1(&rdev->pm.mutex);
		/* disable dynpm */
		rdev->pm.dynpm_state = DYNPM_STATE_DISABLED;
		rdev->pm.dynpm_planned_action = DYNPM_ACTION_NONE;
		rdev->pm.pm_method = PM_METHOD_PROFILE;
		FUNC2(&rdev->pm.mutex);
		FUNC0(&rdev->pm.dynpm_idle_work);
	} else {
		count = -EINVAL;
		goto fail;
	}
	FUNC4(rdev);
fail:
	return count;
}