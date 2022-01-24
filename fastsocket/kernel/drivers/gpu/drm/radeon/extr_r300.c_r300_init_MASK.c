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
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; scalar_t__ is_atom_bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int EINVAL ; 
 int RADEON_IS_AGP ; 
 int RADEON_IS_PCI ; 
 int RADEON_IS_PCIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_0007C0_CP_STAT ; 
 int /*<<< orphan*/  R_000E40_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 scalar_t__ FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int FUNC29 (struct radeon_device*) ; 

int FUNC30(struct radeon_device *rdev)
{
	int r;

	/* Disable VGA */
	FUNC8(rdev);
	/* Initialize scratch registers */
	FUNC25(rdev);
	/* Initialize surface registers */
	FUNC26(rdev);
	/* TODO: disable VGA need to use VGA request */
	/* restore some register to sane defaults */
	FUNC7(rdev);
	/* BIOS*/
	if (!FUNC21(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	if (rdev->is_atom_bios) {
		FUNC2(rdev->dev, "Expecting combios for RS400/RS480 GPU\n");
		return -EINVAL;
	} else {
		r = FUNC19(rdev);
		if (r)
			return r;
	}
	/* Reset gpu before posting otherwise ATOM will enter infinite loop */
	if (FUNC16(rdev)) {
		FUNC3(rdev->dev,
			"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
			FUNC1(R_000E40_RBBM_STATUS),
			FUNC1(R_0007C0_CP_STAT));
	}
	/* check if cards are posted or not */
	if (FUNC18(rdev) == false)
		return -EINVAL;
	/* Set asic errata */
	FUNC9(rdev);
	/* Initialize clocks */
	FUNC22(rdev->ddev);
	/* initialize AGP */
	if (rdev->flags & RADEON_IS_AGP) {
		r = FUNC15(rdev);
		if (r) {
			FUNC13(rdev);
		}
	}
	/* initialize memory controller */
	FUNC10(rdev);
	/* Fence driver */
	r = FUNC20(rdev);
	if (r)
		return r;
	/* Memory manager */
	r = FUNC17(rdev);
	if (r)
		return r;
	if (rdev->flags & RADEON_IS_PCIE) {
		r = FUNC29(rdev);
		if (r)
			return r;
	}
	if (rdev->flags & RADEON_IS_PCI) {
		r = FUNC6(rdev);
		if (r)
			return r;
	}
	FUNC11(rdev);

	rdev->accel_working = true;
	r = FUNC12(rdev);
	if (r) {
		/* Somethings want wront with the accel init stop accel */
		FUNC2(rdev->dev, "Disabling GPU acceleration\n");
		FUNC4(rdev);
		FUNC27(rdev);
		FUNC23(rdev);
		FUNC24(rdev);
		if (rdev->flags & RADEON_IS_PCIE)
			FUNC28(rdev);
		if (rdev->flags & RADEON_IS_PCI)
			FUNC5(rdev);
		FUNC14(rdev);
		rdev->accel_working = false;
	}
	return 0;
}