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
struct radeon_ring {int /*<<< orphan*/  ring_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  installed; } ;
struct radeon_device {int flags; int /*<<< orphan*/  dev; struct radeon_ring* ring; TYPE_3__ irq; TYPE_2__* asic; int /*<<< orphan*/  rlc_fw; int /*<<< orphan*/  pfp_fw; int /*<<< orphan*/  me_fw; int /*<<< orphan*/  mc_fw; } ;
struct TYPE_4__ {int /*<<< orphan*/ * copy; } ;
struct TYPE_5__ {TYPE_1__ copy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  DMA_RB_RPTR ; 
 int /*<<< orphan*/  DMA_RB_WPTR ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  R600_CP_RB_RPTR ; 
 int /*<<< orphan*/  R600_CP_RB_WPTR ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_WB_DMA_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 int RADEON_IS_AGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*) ; 
 int FUNC22 (struct radeon_device*,size_t) ; 
 int FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int FUNC25 (struct radeon_device*) ; 
 int FUNC26 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC28(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	int r;

	/* enable pcie gen2 link */
	FUNC13(rdev);

	if (FUNC0(rdev)) {
		if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw || !rdev->mc_fw) {
			r = FUNC14(rdev);
			if (r) {
				FUNC2("Failed to load firmware!\n");
				return r;
			}
		}
		r = FUNC15(rdev);
		if (r) {
			FUNC2("Failed to load MC firmware!\n");
			return r;
		}
	} else {
		if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw) {
			r = FUNC19(rdev);
			if (r) {
				FUNC2("Failed to load firmware!\n");
				return r;
			}
		}
	}

	r = FUNC21(rdev);
	if (r)
		return r;

	FUNC11(rdev);
	if (rdev->flags & RADEON_IS_AGP) {
		FUNC5(rdev);
	} else {
		r = FUNC12(rdev);
		if (r)
			return r;
	}
	FUNC9(rdev);

	r = FUNC6(rdev);
	if (r) {
		FUNC17(rdev);
		rdev->asic->copy.copy = NULL;
		FUNC4(rdev->dev, "failed blitter (%d) falling back to memcpy\n", r);
	}

	/* allocate wb buffer */
	r = FUNC27(rdev);
	if (r)
		return r;

	r = FUNC22(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC3(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC22(rdev, R600_RING_TYPE_DMA_INDEX);
	if (r) {
		FUNC3(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC25(rdev);
		if (r)
			return r;
	}

	r = FUNC20(rdev);
	if (r) {
		FUNC2("radeon: IH init failed (%d).\n", r);
		FUNC24(rdev);
		return r;
	}
	FUNC10(rdev);

	r = FUNC26(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     R600_CP_RB_RPTR, R600_CP_RB_WPTR,
			     0, 0xfffff, RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	r = FUNC26(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
			     DMA_RB_RPTR, DMA_RB_WPTR,
			     2, 0x3fffc, FUNC1(DMA_PACKET_NOP, 0, 0));
	if (r)
		return r;

	r = FUNC7(rdev);
	if (r)
		return r;
	r = FUNC8(rdev);
	if (r)
		return r;
	r = FUNC18(rdev);
	if (r)
		return r;

	r = FUNC23(rdev);
	if (r) {
		FUNC3(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC16(rdev);
	if (r) {
		FUNC2("radeon: audio init failed\n");
		return r;
	}

	return 0;
}