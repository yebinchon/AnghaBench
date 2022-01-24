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
typedef  int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int RADEON_RESET_COMPUTE ; 
 int RADEON_RESET_CP ; 
 int RADEON_RESET_GFX ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*) ; 
 int FUNC2 (struct radeon_device*,struct radeon_ring*) ; 
 int FUNC3 (struct radeon_device*) ; 

bool FUNC4(struct radeon_device *rdev, struct radeon_ring *ring)
{
	u32 reset_mask = FUNC3(rdev);

	if (!(reset_mask & (RADEON_RESET_GFX |
			    RADEON_RESET_COMPUTE |
			    RADEON_RESET_CP))) {
		FUNC1(ring);
		return false;
	}
	/* force CP activities */
	FUNC0(rdev, ring);
	return FUNC2(rdev, ring);
}