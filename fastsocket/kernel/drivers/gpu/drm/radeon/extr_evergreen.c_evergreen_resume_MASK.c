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
struct TYPE_2__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {int accel_working; TYPE_1__ mode_info; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct radeon_device*) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 

int FUNC5(struct radeon_device *rdev)
{
	int r;

	/* reset the asic, the gfx blocks are often in a bad state
	 * after the driver is unloaded or after a resume
	 */
	if (FUNC4(rdev))
		FUNC2(rdev->dev, "GPU reset failed !\n");
	/* Do not reset GPU before posting, on rv770 hw unlike on r500 hw,
	 * posting will perform necessary task to bring back GPU into good
	 * shape.
	 */
	/* post card */
	FUNC1(rdev->mode_info.atom_context);

	rdev->accel_working = true;
	r = FUNC3(rdev);
	if (r) {
		FUNC0("evergreen startup failed on resume\n");
		rdev->accel_working = false;
		return r;
	}

	return r;

}