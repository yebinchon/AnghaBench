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
struct TYPE_2__ {scalar_t__ pm_method; scalar_t__ profile; int /*<<< orphan*/  mutex; } ;
struct radeon_device {TYPE_1__ pm; } ;

/* Variables and functions */
 scalar_t__ PM_METHOD_PROFILE ; 
 scalar_t__ PM_PROFILE_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

void FUNC4(struct radeon_device *rdev)
{
	if (rdev->pm.pm_method == PM_METHOD_PROFILE) {
		if (rdev->pm.profile == PM_PROFILE_AUTO) {
			FUNC0(&rdev->pm.mutex);
			FUNC3(rdev);
			FUNC2(rdev);
			FUNC1(&rdev->pm.mutex);
		}
	}
}