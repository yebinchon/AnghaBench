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
struct radeon_device {int flags; int /*<<< orphan*/  dev; struct radeon_ring* ring; TYPE_3__ irq; TYPE_2__* asic; int /*<<< orphan*/  mc_fw; int /*<<< orphan*/  rlc_fw; int /*<<< orphan*/  pfp_fw; int /*<<< orphan*/  me_fw; } ;
struct TYPE_4__ {int /*<<< orphan*/ * copy; } ;
struct TYPE_5__ {TYPE_1__ copy; } ;

/* Variables and functions */
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 int /*<<< orphan*/  CAYMAN_WB_DMA1_RPTR_OFFSET ; 
 scalar_t__ CP_RB0_RPTR ; 
 scalar_t__ CP_RB0_WPTR ; 
 scalar_t__ DMA0_REGISTER_OFFSET ; 
 scalar_t__ DMA1_REGISTER_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 scalar_t__ DMA_RB_RPTR ; 
 scalar_t__ DMA_RB_WPTR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_WB_DMA_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 int RADEON_IS_IGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*,size_t) ; 
 int FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int FUNC22 (struct radeon_device*) ; 
 int FUNC23 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct radeon_device*) ; 
 int FUNC25 (struct radeon_device*) ; 
 int FUNC26 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC27(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	int r;

	/* enable pcie gen2 link */
	FUNC12(rdev);

	if (rdev->flags & RADEON_IS_IGP) {
		if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw) {
			r = FUNC13(rdev);
			if (r) {
				FUNC1("Failed to load firmware!\n");
				return r;
			}
		}
	} else {
		if (!rdev->me_fw || !rdev->pfp_fw || !rdev->rlc_fw || !rdev->mc_fw) {
			r = FUNC13(rdev);
			if (r) {
				FUNC1("Failed to load firmware!\n");
				return r;
			}
		}

		r = FUNC14(rdev);
		if (r) {
			FUNC1("Failed to load MC firmware!\n");
			return r;
		}
	}

	r = FUNC18(rdev);
	if (r)
		return r;

	FUNC11(rdev);
	r = FUNC6(rdev);
	if (r)
		return r;
	FUNC5(rdev);

	r = FUNC9(rdev);
	if (r) {
		FUNC16(rdev);
		rdev->asic->copy.copy = NULL;
		FUNC8(rdev->dev, "failed blitter (%d) falling back to memcpy\n", r);
	}

	/* allocate rlc buffers */
	if (rdev->flags & RADEON_IS_IGP) {
		r = FUNC26(rdev);
		if (r) {
			FUNC1("Failed to init rlc BOs!\n");
			return r;
		}
	}

	/* allocate wb buffer */
	r = FUNC25(rdev);
	if (r)
		return r;

	r = FUNC19(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC7(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC19(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
	if (r) {
		FUNC7(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC19(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
	if (r) {
		FUNC7(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC19(rdev, R600_RING_TYPE_DMA_INDEX);
	if (r) {
		FUNC7(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	r = FUNC19(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
	if (r) {
		FUNC7(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC22(rdev);
		if (r)
			return r;
	}

	r = FUNC17(rdev);
	if (r) {
		FUNC1("radeon: IH init failed (%d).\n", r);
		FUNC21(rdev);
		return r;
	}
	FUNC10(rdev);

	r = FUNC23(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     CP_RB0_RPTR, CP_RB0_WPTR,
			     0, 0xfffff, RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	r = FUNC23(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
			     DMA_RB_RPTR + DMA0_REGISTER_OFFSET,
			     DMA_RB_WPTR + DMA0_REGISTER_OFFSET,
			     2, 0x3fffc, FUNC0(DMA_PACKET_NOP, 0, 0, 0));
	if (r)
		return r;

	ring = &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX];
	r = FUNC23(rdev, ring, ring->ring_size, CAYMAN_WB_DMA1_RPTR_OFFSET,
			     DMA_RB_RPTR + DMA1_REGISTER_OFFSET,
			     DMA_RB_WPTR + DMA1_REGISTER_OFFSET,
			     2, 0x3fffc, FUNC0(DMA_PACKET_NOP, 0, 0, 0));
	if (r)
		return r;

	r = FUNC2(rdev);
	if (r)
		return r;
	r = FUNC3(rdev);
	if (r)
		return r;

	r = FUNC4(rdev);
	if (r)
		return r;

	r = FUNC20(rdev);
	if (r) {
		FUNC7(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC24(rdev);
	if (r) {
		FUNC7(rdev->dev, "vm manager initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC15(rdev);
	if (r)
		return r;

	return 0;
}