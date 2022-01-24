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
struct radeon_device {int flags; int /*<<< orphan*/  dev; struct radeon_ring* ring; TYPE_3__ irq; TYPE_2__* asic; int /*<<< orphan*/  rlc_fw; int /*<<< orphan*/  pfp_fw; int /*<<< orphan*/  me_fw; } ;
struct TYPE_4__ {int /*<<< orphan*/ * copy; } ;
struct TYPE_5__ {TYPE_1__ copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  DMA_RB_RPTR ; 
 int /*<<< orphan*/  DMA_RB_WPTR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  R600_CP_RB_RPTR ; 
 int /*<<< orphan*/  R600_CP_RB_WPTR ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_WB_DMA_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 int RADEON_IS_AGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*,size_t) ; 
 int FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC25(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int r;

	/* enable pcie gen2 link */
	FUNC24(rdev);

	if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw) {
		r = FUNC9(rdev);
		if (r) {
			FUNC1("Failed to load firmware!\n");
			return r;
		}
	}

	r = FUNC12(rdev);
	if (r)
		return r;

	FUNC22(rdev);
	if (rdev->flags & RADEON_IS_AGP) {
		FUNC19(rdev);
	} else {
		r = FUNC23(rdev);
		if (r)
			return r;
	}

	FUNC21(rdev);
	r = FUNC6(rdev);
	if (r) {
		FUNC5(rdev);
		rdev->asic->copy.copy = NULL;
		FUNC3(rdev->dev, "failed blitter (%d) falling back to memcpy\n", r);
	}

	/* allocate wb buffer */
	r = FUNC18(rdev);
	if (r)
		return r;

	r = FUNC13(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC2(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC13(rdev, R600_RING_TYPE_DMA_INDEX);
	if (r) {
		FUNC2(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC16(rdev);
		if (r)
			return r;
	}

	r = FUNC10(rdev);
	if (r) {
		FUNC1("radeon: IH init failed (%d).\n", r);
		FUNC15(rdev);
		return r;
	}
	FUNC11(rdev);

	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	r = FUNC17(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     R600_CP_RB_RPTR, R600_CP_RB_WPTR,
			     0, 0xfffff, RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	r = FUNC17(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
			     DMA_RB_RPTR, DMA_RB_WPTR,
			     2, 0x3fffc, FUNC0(DMA_PACKET_NOP, 0, 0, 0));
	if (r)
		return r;

	r = FUNC20(rdev);
	if (r)
		return r;
	r = FUNC7(rdev);
	if (r)
		return r;

	r = FUNC8(rdev);
	if (r)
		return r;

	r = FUNC14(rdev);
	if (r) {
		FUNC2(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC4(rdev);
	if (r) {
		FUNC1("radeon: audio init failed\n");
		return r;
	}

	return 0;
}