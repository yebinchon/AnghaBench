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
typedef  int uint32_t ;
struct radeon_ring {int dummy; } ;
struct radeon_ib {int* ptr; int length_dw; int /*<<< orphan*/  fence; } ;
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADEON_RING_TYPE_GFX_INDEX ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ib*) ; 
 int FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int FUNC12 (struct radeon_device*,int*) ; 

int FUNC13(struct radeon_device *rdev, struct radeon_ring *ring)
{
	struct radeon_ib ib;
	uint32_t scratch;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	r = FUNC12(rdev, &scratch);
	if (r) {
		FUNC0("radeon: failed to get scratch reg (%d).\n", r);
		return r;
	}
	FUNC6(scratch, 0xCAFEDEAD);
	r = FUNC9(rdev, RADEON_RING_TYPE_GFX_INDEX, &ib, NULL, 256);
	if (r) {
		FUNC0("radeon: failed to get ib (%d).\n", r);
		goto free_scratch;
	}
	ib.ptr[0] = FUNC3(scratch, 0);
	ib.ptr[1] = 0xDEADBEEF;
	ib.ptr[2] = FUNC4(0);
	ib.ptr[3] = FUNC4(0);
	ib.ptr[4] = FUNC4(0);
	ib.ptr[5] = FUNC4(0);
	ib.ptr[6] = FUNC4(0);
	ib.ptr[7] = FUNC4(0);
	ib.length_dw = 8;
	r = FUNC10(rdev, &ib, NULL);
	if (r) {
		FUNC0("radeon: failed to schedule ib (%d).\n", r);
		goto free_ib;
	}
	r = FUNC7(ib.fence, false);
	if (r) {
		FUNC0("radeon: fence wait failed (%d).\n", r);
		goto free_ib;
	}
	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC5(scratch);
		if (tmp == 0xDEADBEEF) {
			break;
		}
		FUNC2(1);
	}
	if (i < rdev->usec_timeout) {
		FUNC1("ib test succeeded in %u usecs\n", i);
	} else {
		FUNC0("radeon: ib test failed (scratch(0x%04X)=0x%08X)\n",
			  scratch, tmp);
		r = -EINVAL;
	}
free_ib:
	FUNC8(rdev, &ib);
free_scratch:
	FUNC11(rdev, scratch);
	return r;
}