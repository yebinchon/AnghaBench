#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_device {int accel_working; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; scalar_t__ is_atom_bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_0007C0_CP_STAT ; 
 int /*<<< orphan*/  R_000E40_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 scalar_t__ FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int FUNC23 (struct radeon_device*) ; 

int FUNC24(struct radeon_device *rdev)
{
	int r;

	/* Disable VGA */
	FUNC6(rdev);
	/* Initialize scratch registers */
	FUNC17(rdev);
	/* Initialize surface registers */
	FUNC18(rdev);
	/* TODO: disable VGA need to use VGA request */
	/* restore some register to sane defaults */
	FUNC5(rdev);
	/* BIOS*/
	if (!FUNC13(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	if (rdev->is_atom_bios) {
		FUNC2(rdev->dev, "Expecting combios for RS400/RS480 GPU\n");
		return -EINVAL;
	} else {
		r = FUNC11(rdev);
		if (r)
			return r;
	}
	/* Reset gpu before posting otherwise ATOM will enter infinite loop */
	if (FUNC8(rdev)) {
		FUNC3(rdev->dev,
			"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
			FUNC1(R_000E40_RBBM_STATUS),
			FUNC1(R_0007C0_CP_STAT));
	}
	/* check if cards are posted or not */
	if (FUNC10(rdev) == false)
		return -EINVAL;

	/* Initialize clocks */
	FUNC14(rdev->ddev);
	/* initialize memory controller */
	FUNC22(rdev);
	/* Fence driver */
	r = FUNC12(rdev);
	if (r)
		return r;
	/* Memory manager */
	r = FUNC9(rdev);
	if (r)
		return r;
	r = FUNC21(rdev);
	if (r)
		return r;
	FUNC7(rdev);

	rdev->accel_working = true;
	r = FUNC23(rdev);
	if (r) {
		/* Somethings want wront with the accel init stop accel */
		FUNC2(rdev->dev, "Disabling GPU acceleration\n");
		FUNC4(rdev);
		FUNC19(rdev);
		FUNC15(rdev);
		FUNC20(rdev);
		FUNC16(rdev);
		rdev->accel_working = false;
	}
	return 0;
}