#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ring_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  dev; TYPE_2__ ih; TYPE_3__* ring; int /*<<< orphan*/  ddev; TYPE_1__ mode_info; int /*<<< orphan*/  bios; int /*<<< orphan*/  is_atom_bios; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ring_obj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int RADEON_IS_AGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 scalar_t__ FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 

int FUNC28(struct radeon_device *rdev)
{
	int r;

	if (FUNC6(rdev)) {
		FUNC1("Failed to register debugfs file for mc !\n");
	}
	/* Read BIOS */
	if (!FUNC22(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	/* Must be an ATOMBIOS */
	if (!rdev->is_atom_bios) {
		FUNC4(rdev->dev, "Expecting atombios for R600 GPU\n");
		return -EINVAL;
	}
	r = FUNC18(rdev);
	if (r)
		return r;
	/* Post card if necessary */
	if (!FUNC20(rdev)) {
		if (!rdev->bios) {
			FUNC4(rdev->dev, "Card not posted and no BIOS - ignoring\n");
			return -EINVAL;
		}
		FUNC2("GPU not posted. posting now...\n");
		FUNC3(rdev->mode_info.atom_context);
	}
	/* Initialize scratch registers */
	FUNC14(rdev);
	/* Initialize surface registers */
	FUNC26(rdev);
	/* Initialize clocks */
	FUNC23(rdev->ddev);
	/* Fence driver */
	r = FUNC21(rdev);
	if (r)
		return r;
	if (rdev->flags & RADEON_IS_AGP) {
		r = FUNC17(rdev);
		if (r)
			FUNC16(rdev);
	}
	r = FUNC10(rdev);
	if (r)
		return r;
	/* Memory manager */
	r = FUNC19(rdev);
	if (r)
		return r;

	rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ring_obj = NULL;
	FUNC13(rdev, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX], 1024 * 1024);

	rdev->ring[R600_RING_TYPE_DMA_INDEX].ring_obj = NULL;
	FUNC13(rdev, &rdev->ring[R600_RING_TYPE_DMA_INDEX], 64 * 1024);

	rdev->ih.ring_obj = NULL;
	FUNC8(rdev, 64 * 1024);

	r = FUNC12(rdev);
	if (r)
		return r;

	rdev->accel_working = true;
	r = FUNC15(rdev);
	if (r) {
		FUNC4(rdev->dev, "disabling GPU acceleration\n");
		FUNC5(rdev);
		FUNC7(rdev);
		FUNC9(rdev);
		FUNC27(rdev);
		FUNC24(rdev);
		FUNC25(rdev);
		FUNC11(rdev);
		rdev->accel_working = false;
	}

	return 0;
}