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
struct radeon_device {int flags; int accel_working; int /*<<< orphan*/  mc_fw; int /*<<< orphan*/  dev; TYPE_2__ ih; TYPE_3__* ring; int /*<<< orphan*/  ddev; TYPE_1__ mode_info; int /*<<< orphan*/  bios; int /*<<< orphan*/  is_atom_bios; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ring_obj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EINVAL ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int RADEON_IS_AGP ; 
 int RADEON_IS_IGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 scalar_t__ FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*) ; 

int FUNC30(struct radeon_device *rdev)
{
	int r;

	/* Read BIOS */
	if (!FUNC24(rdev)) {
		if (FUNC0(rdev))
			return -EINVAL;
	}
	/* Must be an ATOMBIOS */
	if (!rdev->is_atom_bios) {
		FUNC5(rdev->dev, "Expecting atombios for evergreen GPU\n");
		return -EINVAL;
	}
	r = FUNC20(rdev);
	if (r)
		return r;
	/* reset the asic, the gfx blocks are often in a bad state
	 * after the driver is unloaded or after a resume
	 */
	if (FUNC19(rdev))
		FUNC6(rdev->dev, "GPU reset failed !\n");
	/* Post card if necessary */
	if (!FUNC22(rdev)) {
		if (!rdev->bios) {
			FUNC5(rdev->dev, "Card not posted and no BIOS - ignoring\n");
			return -EINVAL;
		}
		FUNC3("GPU not posted. posting now...\n");
		FUNC4(rdev->mode_info.atom_context);
	}
	/* Initialize scratch registers */
	FUNC15(rdev);
	/* Initialize surface registers */
	FUNC28(rdev);
	/* Initialize clocks */
	FUNC25(rdev->ddev);
	/* Fence driver */
	r = FUNC23(rdev);
	if (r)
		return r;
	/* initialize AGP */
	if (rdev->flags & RADEON_IS_AGP) {
		r = FUNC18(rdev);
		if (r)
			FUNC17(rdev);
	}
	/* initialize memory controller */
	r = FUNC7(rdev);
	if (r)
		return r;
	/* Memory manager */
	r = FUNC21(rdev);
	if (r)
		return r;

	rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ring_obj = NULL;
	FUNC14(rdev, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX], 1024 * 1024);

	rdev->ring[R600_RING_TYPE_DMA_INDEX].ring_obj = NULL;
	FUNC14(rdev, &rdev->ring[R600_RING_TYPE_DMA_INDEX], 64 * 1024);

	rdev->ih.ring_obj = NULL;
	FUNC11(rdev, 64 * 1024);

	r = FUNC13(rdev);
	if (r)
		return r;

	rdev->accel_working = true;
	r = FUNC9(rdev);
	if (r) {
		FUNC5(rdev->dev, "disabling GPU acceleration\n");
		FUNC16(rdev);
		FUNC10(rdev);
		FUNC12(rdev);
		FUNC29(rdev);
		FUNC26(rdev);
		FUNC27(rdev);
		FUNC8(rdev);
		rdev->accel_working = false;
	}

	/* Don't start up if the MC ucode is missing on BTC parts.
	 * The default clocks and voltages before the MC ucode
	 * is loaded are not suffient for advanced operations.
	 */
	if (FUNC1(rdev)) {
		if (!rdev->mc_fw && !(rdev->flags & RADEON_IS_IGP)) {
			FUNC2("radeon: MC ucode required for NI+.\n");
			return -EINVAL;
		}
	}

	return 0;
}