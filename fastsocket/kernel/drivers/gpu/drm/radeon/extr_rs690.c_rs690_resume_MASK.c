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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_0007C0_CP_STAT ; 
 int /*<<< orphan*/  R_000E40_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 

int FUNC8(struct radeon_device *rdev)
{
	int r;

	/* Make sur GART are not working */
	FUNC5(rdev);
	/* Resume clock before doing reset */
	FUNC7(rdev);
	/* Reset gpu before posting otherwise ATOM will enter infinite loop */
	if (FUNC3(rdev)) {
		FUNC2(rdev->dev, "GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
			FUNC0(R_000E40_RBBM_STATUS),
			FUNC0(R_0007C0_CP_STAT));
	}
	/* post */
	FUNC1(rdev->mode_info.atom_context);
	/* Resume clock after posting */
	FUNC7(rdev);
	/* Initialize surface registers */
	FUNC4(rdev);

	rdev->accel_working = true;
	r = FUNC6(rdev);
	if (r) {
		rdev->accel_working = false;
	}
	return r;
}