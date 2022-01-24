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
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int FUNC10 (struct radeon_device*,int*) ; 

int FUNC11(struct radeon_device *rdev, struct radeon_ring *ring)
{
	uint32_t scratch;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	r = FUNC10(rdev, &scratch);
	if (r) {
		FUNC0("radeon: cp failed to get scratch reg (%d).\n", r);
		return r;
	}
	FUNC5(scratch, 0xCAFEDEAD);
	r = FUNC6(rdev, ring, 2);
	if (r) {
		FUNC0("radeon: cp failed to lock ring (%d).\n", r);
		FUNC9(rdev, scratch);
		return r;
	}
	FUNC8(ring, FUNC3(scratch, 0));
	FUNC8(ring, 0xDEADBEEF);
	FUNC7(rdev, ring);
	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC4(scratch);
		if (tmp == 0xDEADBEEF) {
			break;
		}
		FUNC2(1);
	}
	if (i < rdev->usec_timeout) {
		FUNC1("ring test succeeded in %d usecs\n", i);
	} else {
		FUNC0("radeon: ring test failed (scratch(0x%04X)=0x%08X)\n",
			  scratch, tmp);
		r = -EINVAL;
	}
	FUNC9(rdev, scratch);
	return r;
}