#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_ring {int /*<<< orphan*/  ring_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  installed; } ;
struct radeon_device {int /*<<< orphan*/  dev; struct radeon_ring* ring; TYPE_2__ irq; TYPE_1__* asic; int /*<<< orphan*/  mc_fw; int /*<<< orphan*/  rlc_fw; int /*<<< orphan*/  ce_fw; int /*<<< orphan*/  pfp_fw; int /*<<< orphan*/  me_fw; } ;
struct TYPE_3__ {int /*<<< orphan*/ * copy; } ;

/* Variables and functions */
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 int /*<<< orphan*/  CAYMAN_WB_DMA1_RPTR_OFFSET ; 
 scalar_t__ CP_RB0_RPTR ; 
 scalar_t__ CP_RB0_WPTR ; 
 scalar_t__ CP_RB1_RPTR ; 
 scalar_t__ CP_RB1_WPTR ; 
 scalar_t__ CP_RB2_RPTR ; 
 scalar_t__ CP_RB2_WPTR ; 
 scalar_t__ DMA0_REGISTER_OFFSET ; 
 scalar_t__ DMA1_REGISTER_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 scalar_t__ DMA_RB_RPTR ; 
 scalar_t__ DMA_RB_WPTR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_WB_DMA_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP1_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_WB_CP2_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*,size_t) ; 
 int FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int FUNC23 (struct radeon_device*) ; 
 int FUNC24 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC25(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int r;

	if (!rdev->me_fw || !rdev->pfp_fw || !rdev->ce_fw ||
	    !rdev->rlc_fw || !rdev->mc_fw) {
		r = FUNC18(rdev);
		if (r) {
			FUNC1("Failed to load firmware!\n");
			return r;
		}
	}

	r = FUNC21(rdev);
	if (r) {
		FUNC1("Failed to load MC firmware!\n");
		return r;
	}

	r = FUNC7(rdev);
	if (r)
		return r;

	FUNC22(rdev);
	r = FUNC23(rdev);
	if (r)
		return r;
	FUNC17(rdev);

#if 0
	r = evergreen_blit_init(rdev);
	if (r) {
		r600_blit_fini(rdev);
		rdev->asic->copy = NULL;
		dev_warn(rdev->dev, "failed blitter (%d) falling back to memcpy\n", r);
	}
#endif
	/* allocate rlc buffers */
	r = FUNC24(rdev);
	if (r) {
		FUNC1("Failed to init rlc BOs!\n");
		return r;
	}

	/* allocate wb buffer */
	r = FUNC14(rdev);
	if (r)
		return r;

	r = FUNC8(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC3(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC8(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
	if (r) {
		FUNC3(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC8(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
	if (r) {
		FUNC3(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC8(rdev, R600_RING_TYPE_DMA_INDEX);
	if (r) {
		FUNC3(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	r = FUNC8(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
	if (r) {
		FUNC3(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC11(rdev);
		if (r)
			return r;
	}

	r = FUNC19(rdev);
	if (r) {
		FUNC1("radeon: IH init failed (%d).\n", r);
		FUNC10(rdev);
		return r;
	}
	FUNC20(rdev);

	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	r = FUNC12(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     CP_RB0_RPTR, CP_RB0_WPTR,
			     0, 0xfffff, RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX];
	r = FUNC12(rdev, ring, ring->ring_size, RADEON_WB_CP1_RPTR_OFFSET,
			     CP_RB1_RPTR, CP_RB1_WPTR,
			     0, 0xfffff, RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX];
	r = FUNC12(rdev, ring, ring->ring_size, RADEON_WB_CP2_RPTR_OFFSET,
			     CP_RB2_RPTR, CP_RB2_WPTR,
			     0, 0xfffff, RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	r = FUNC12(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
			     DMA_RB_RPTR + DMA0_REGISTER_OFFSET,
			     DMA_RB_WPTR + DMA0_REGISTER_OFFSET,
			     2, 0x3fffc, FUNC0(DMA_PACKET_NOP, 0, 0, 0, 0));
	if (r)
		return r;

	ring = &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX];
	r = FUNC12(rdev, ring, ring->ring_size, CAYMAN_WB_DMA1_RPTR_OFFSET,
			     DMA_RB_RPTR + DMA1_REGISTER_OFFSET,
			     DMA_RB_WPTR + DMA1_REGISTER_OFFSET,
			     2, 0x3fffc, FUNC0(DMA_PACKET_NOP, 0, 0, 0, 0));
	if (r)
		return r;

	r = FUNC15(rdev);
	if (r)
		return r;
	r = FUNC16(rdev);
	if (r)
		return r;

	r = FUNC2(rdev);
	if (r)
		return r;

	r = FUNC9(rdev);
	if (r) {
		FUNC3(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC13(rdev);
	if (r) {
		FUNC3(rdev->dev, "vm manager initialization failed (%d).\n", r);
		return r;
	}

	return 0;
}