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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000E40_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ring*) ; 

bool FUNC5(struct radeon_device *rdev, struct radeon_ring *ring)
{
	u32 rbbm_status;

	rbbm_status = FUNC1(R_000E40_RBBM_STATUS);
	if (!FUNC0(rbbm_status)) {
		FUNC3(ring);
		return false;
	}
	/* force CP activities */
	FUNC2(rdev, ring);
	return FUNC4(rdev, ring);
}