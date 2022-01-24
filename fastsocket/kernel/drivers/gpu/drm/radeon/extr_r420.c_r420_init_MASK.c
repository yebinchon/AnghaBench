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
struct radeon_device {int flags; scalar_t__ family; int accel_working; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddev; scalar_t__ is_atom_bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ CHIP_R420 ; 
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
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
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
 int FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*) ; 
 int FUNC30 (struct radeon_device*) ; 

int FUNC31(struct radeon_device *rdev)
{
	int r;

	/* Initialize scratch registers */
	FUNC26(rdev);
	/* Initialize surface registers */
	FUNC27(rdev);
	/* TODO: disable VGA need to use VGA request */
	/* restore some register to sane defaults */
	FUNC8(rdev);
	/* BIOS*/
	if (!FUNC22(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	if (rdev->is_atom_bios) {
		r = FUNC17(rdev);
		if (r) {
			return r;
		}
	} else {
		r = FUNC20(rdev);
		if (r) {
			return r;
		}
	}
	/* Reset gpu before posting otherwise ATOM will enter infinite loop */
	if (FUNC16(rdev)) {
		FUNC3(rdev->dev,
			"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
			FUNC1(R_000E40_RBBM_STATUS),
			FUNC1(R_0007C0_CP_STAT));
	}
	/* check if cards are posted or not */
	if (FUNC19(rdev) == false)
		return -EINVAL;

	/* Initialize clocks */
	FUNC23(rdev->ddev);
	/* initialize AGP */
	if (rdev->flags & RADEON_IS_AGP) {
		r = FUNC15(rdev);
		if (r) {
			FUNC13(rdev);
		}
	}
	/* initialize memory controller */
	FUNC9(rdev);
	FUNC10(rdev);
	/* Fence driver */
	r = FUNC21(rdev);
	if (r) {
		return r;
	}
	/* Memory manager */
	r = FUNC18(rdev);
	if (r) {
		return r;
	}
	if (rdev->family == CHIP_R420)
		FUNC5(rdev);

	if (rdev->flags & RADEON_IS_PCIE) {
		r = FUNC30(rdev);
		if (r)
			return r;
	}
	if (rdev->flags & RADEON_IS_PCI) {
		r = FUNC7(rdev);
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
		FUNC28(rdev);
		FUNC24(rdev);
		FUNC25(rdev);
		if (rdev->flags & RADEON_IS_PCIE)
			FUNC29(rdev);
		if (rdev->flags & RADEON_IS_PCI)
			FUNC6(rdev);
		FUNC14(rdev);
		rdev->accel_working = false;
	}
	return 0;
}