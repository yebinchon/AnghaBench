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
struct TYPE_2__ {scalar_t__ pm_method; int /*<<< orphan*/  mutex; int /*<<< orphan*/  profile; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ PM_METHOD_PROFILE ; 
 int /*<<< orphan*/  PM_PROFILE_AUTO ; 
 int /*<<< orphan*/  PM_PROFILE_DEFAULT ; 
 int /*<<< orphan*/  PM_PROFILE_HIGH ; 
 int /*<<< orphan*/  PM_PROFILE_LOW ; 
 int /*<<< orphan*/  PM_PROFILE_MID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf,
				     size_t count)
{
	struct drm_device *ddev = FUNC2(FUNC7(dev));
	struct radeon_device *rdev = ddev->dev_private;

	FUNC0(&rdev->pm.mutex);
	if (rdev->pm.pm_method == PM_METHOD_PROFILE) {
		if (FUNC6("default", buf, FUNC5("default")) == 0)
			rdev->pm.profile = PM_PROFILE_DEFAULT;
		else if (FUNC6("auto", buf, FUNC5("auto")) == 0)
			rdev->pm.profile = PM_PROFILE_AUTO;
		else if (FUNC6("low", buf, FUNC5("low")) == 0)
			rdev->pm.profile = PM_PROFILE_LOW;
		else if (FUNC6("mid", buf, FUNC5("mid")) == 0)
			rdev->pm.profile = PM_PROFILE_MID;
		else if (FUNC6("high", buf, FUNC5("high")) == 0)
			rdev->pm.profile = PM_PROFILE_HIGH;
		else {
			count = -EINVAL;
			goto fail;
		}
		FUNC4(rdev);
		FUNC3(rdev);
	} else
		count = -EINVAL;

fail:
	FUNC1(&rdev->pm.mutex);

	return count;
}