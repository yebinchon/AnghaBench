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
struct radeon_ring {int dummy; } ;
struct TYPE_3__ {int max_hw_contexts; } ;
struct TYPE_4__ {TYPE_1__ si; } ;
struct radeon_device {struct radeon_ring* ring; TYPE_2__ config; } ;

/* Variables and functions */
 int CAYMAN_RING_TYPE_CP2_INDEX ; 
 int /*<<< orphan*/  CE_PARTITION_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_CLEAR_STATE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET3_ME_INITIALIZE ; 
 int FUNC4 (int) ; 
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_PREAMBLE_CNTL ; 
 int PACKET3_PREAMBLE_END_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_SET_BASE ; 
 int /*<<< orphan*/  PACKET3_SET_CONTEXT_REG ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int FUNC5 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int si_default_size ; 
 int* si_default_state ; 

__attribute__((used)) static int FUNC9(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	int r, i;

	r = FUNC5(rdev, ring, 7 + 4);
	if (r) {
		FUNC0("radeon: cp failed to lock ring (%d).\n", r);
		return r;
	}
	/* init the CP */
	FUNC7(ring, FUNC1(PACKET3_ME_INITIALIZE, 5));
	FUNC7(ring, 0x1);
	FUNC7(ring, 0x0);
	FUNC7(ring, rdev->config.si.max_hw_contexts - 1);
	FUNC7(ring, FUNC4(1));
	FUNC7(ring, 0);
	FUNC7(ring, 0);

	/* init the CE partitions */
	FUNC7(ring, FUNC1(PACKET3_SET_BASE, 2));
	FUNC7(ring, FUNC2(CE_PARTITION_BASE));
	FUNC7(ring, 0xc000);
	FUNC7(ring, 0xe000);
	FUNC6(rdev, ring);

	FUNC8(rdev, true);

	r = FUNC5(rdev, ring, si_default_size + 10);
	if (r) {
		FUNC0("radeon: cp failed to lock ring (%d).\n", r);
		return r;
	}

	/* setup clear context state */
	FUNC7(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC7(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

	for (i = 0; i < si_default_size; i++)
		FUNC7(ring, si_default_state[i]);

	FUNC7(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC7(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);

	/* set clear context state */
	FUNC7(ring, FUNC1(PACKET3_CLEAR_STATE, 0));
	FUNC7(ring, 0);

	FUNC7(ring, FUNC1(PACKET3_SET_CONTEXT_REG, 2));
	FUNC7(ring, 0x00000316);
	FUNC7(ring, 0x0000000e); /* VGT_VERTEX_REUSE_BLOCK_CNTL */
	FUNC7(ring, 0x00000010); /* VGT_OUT_DEALLOC_CNTL */

	FUNC6(rdev, ring);

	for (i = RADEON_RING_TYPE_GFX_INDEX; i <= CAYMAN_RING_TYPE_CP2_INDEX; ++i) {
		ring = &rdev->ring[i];
		r = FUNC5(rdev, ring, 2);

		/* clear the compute context state */
		FUNC7(ring, FUNC3(PACKET3_CLEAR_STATE, 0));
		FUNC7(ring, 0);

		FUNC6(rdev, ring);
	}

	return 0;
}