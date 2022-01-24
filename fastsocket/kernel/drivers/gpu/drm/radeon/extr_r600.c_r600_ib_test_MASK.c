#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_ib {int* ptr; int length_dw; TYPE_1__* fence; } ;
struct radeon_device {unsigned int usec_timeout; } ;
struct TYPE_2__ {int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_OFFSET ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ib*) ; 
 int FUNC8 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int FUNC11 (struct radeon_device*,int*) ; 

int FUNC12(struct radeon_device *rdev, struct radeon_ring *ring)
{
	struct radeon_ib ib;
	uint32_t scratch;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	r = FUNC11(rdev, &scratch);
	if (r) {
		FUNC0("radeon: failed to get scratch reg (%d).\n", r);
		return r;
	}
	FUNC5(scratch, 0xCAFEDEAD);
	r = FUNC8(rdev, ring->idx, &ib, NULL, 256);
	if (r) {
		FUNC0("radeon: failed to get ib (%d).\n", r);
		goto free_scratch;
	}
	ib.ptr[0] = FUNC3(PACKET3_SET_CONFIG_REG, 1);
	ib.ptr[1] = ((scratch - PACKET3_SET_CONFIG_REG_OFFSET) >> 2);
	ib.ptr[2] = 0xDEADBEEF;
	ib.length_dw = 3;
	r = FUNC9(rdev, &ib, NULL);
	if (r) {
		FUNC0("radeon: failed to schedule ib (%d).\n", r);
		goto free_ib;
	}
	r = FUNC6(ib.fence, false);
	if (r) {
		FUNC0("radeon: fence wait failed (%d).\n", r);
		goto free_ib;
	}
	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC4(scratch);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC2(1);
	}
	if (i < rdev->usec_timeout) {
		FUNC1("ib test on ring %d succeeded in %u usecs\n", ib.fence->ring, i);
	} else {
		FUNC0("radeon: ib test failed (scratch(0x%04X)=0x%08X)\n",
			  scratch, tmp);
		r = -EINVAL;
	}
free_ib:
	FUNC7(rdev, &ib);
free_scratch:
	FUNC10(rdev, scratch);
	return r;
}