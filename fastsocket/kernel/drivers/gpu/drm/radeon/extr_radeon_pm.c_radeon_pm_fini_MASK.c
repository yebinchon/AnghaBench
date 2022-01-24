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
struct TYPE_2__ {int num_power_states; scalar_t__ pm_method; scalar_t__ power_state; int /*<<< orphan*/  dynpm_idle_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dynpm_planned_action; int /*<<< orphan*/  dynpm_state; int /*<<< orphan*/  profile; } ;
struct radeon_device {TYPE_1__ pm; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DYNPM_ACTION_DEFAULT ; 
 int /*<<< orphan*/  DYNPM_STATE_DISABLED ; 
 scalar_t__ PM_METHOD_DYNPM ; 
 scalar_t__ PM_METHOD_PROFILE ; 
 int /*<<< orphan*/  PM_PROFILE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_power_method ; 
 int /*<<< orphan*/  dev_attr_power_profile ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 

void FUNC8(struct radeon_device *rdev)
{
	if (rdev->pm.num_power_states > 1) {
		FUNC3(&rdev->pm.mutex);
		if (rdev->pm.pm_method == PM_METHOD_PROFILE) {
			rdev->pm.profile = PM_PROFILE_DEFAULT;
			FUNC7(rdev);
			FUNC6(rdev);
		} else if (rdev->pm.pm_method == PM_METHOD_DYNPM) {
			/* reset default clocks */
			rdev->pm.dynpm_state = DYNPM_STATE_DISABLED;
			rdev->pm.dynpm_planned_action = DYNPM_ACTION_DEFAULT;
			FUNC6(rdev);
		}
		FUNC4(&rdev->pm.mutex);

		FUNC0(&rdev->pm.dynpm_idle_work);

		FUNC1(rdev->dev, &dev_attr_power_profile);
		FUNC1(rdev->dev, &dev_attr_power_method);
	}

	if (rdev->pm.power_state)
		FUNC2(rdev->pm.power_state);

	FUNC5(rdev);
}