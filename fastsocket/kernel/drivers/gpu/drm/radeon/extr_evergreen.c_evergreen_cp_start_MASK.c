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
typedef  int uint32_t ;
struct radeon_ring {int dummy; } ;
struct TYPE_3__ {int max_hw_contexts; } ;
struct TYPE_4__ {TYPE_1__ evergreen; } ;
struct radeon_device {TYPE_2__ config; struct radeon_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ME_CNTL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_ME_INITIALIZE ; 
 int FUNC2 (int) ; 
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ; 
 int /*<<< orphan*/  PACKET3_PREAMBLE_CNTL ; 
 int PACKET3_PREAMBLE_END_CLEAR_STATE ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int evergreen_default_size ; 
 int* evergreen_default_state ; 
 int FUNC4 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_ring*,int) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	int r, i;
	uint32_t cp_me;

	r = FUNC4(rdev, ring, 7);
	if (r) {
		FUNC0("radeon: cp failed to lock ring (%d).\n", r);
		return r;
	}
	FUNC6(ring, FUNC1(PACKET3_ME_INITIALIZE, 5));
	FUNC6(ring, 0x1);
	FUNC6(ring, 0x0);
	FUNC6(ring, rdev->config.evergreen.max_hw_contexts - 1);
	FUNC6(ring, FUNC2(1));
	FUNC6(ring, 0);
	FUNC6(ring, 0);
	FUNC5(rdev, ring);

	cp_me = 0xff;
	FUNC3(CP_ME_CNTL, cp_me);

	r = FUNC4(rdev, ring, evergreen_default_size + 19);
	if (r) {
		FUNC0("radeon: cp failed to lock ring (%d).\n", r);
		return r;
	}

	/* setup clear context state */
	FUNC6(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC6(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

	for (i = 0; i < evergreen_default_size; i++)
		FUNC6(ring, evergreen_default_state[i]);

	FUNC6(ring, FUNC1(PACKET3_PREAMBLE_CNTL, 0));
	FUNC6(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);

	/* set clear context state */
	FUNC6(ring, FUNC1(PACKET3_CLEAR_STATE, 0));
	FUNC6(ring, 0);

	/* SQ_VTX_BASE_VTX_LOC */
	FUNC6(ring, 0xc0026f00);
	FUNC6(ring, 0x00000000);
	FUNC6(ring, 0x00000000);
	FUNC6(ring, 0x00000000);

	/* Clear consts */
	FUNC6(ring, 0xc0036f00);
	FUNC6(ring, 0x00000bc4);
	FUNC6(ring, 0xffffffff);
	FUNC6(ring, 0xffffffff);
	FUNC6(ring, 0xffffffff);

	FUNC6(ring, 0xc0026900);
	FUNC6(ring, 0x00000316);
	FUNC6(ring, 0x0000000e); /* VGT_VERTEX_REUSE_BLOCK_CNTL */
	FUNC6(ring, 0x00000010); /*  */

	FUNC5(rdev, ring);

	return 0;
}