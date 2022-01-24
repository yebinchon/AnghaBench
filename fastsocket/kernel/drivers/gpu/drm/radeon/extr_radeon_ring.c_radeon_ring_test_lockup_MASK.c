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
struct radeon_ring {int rptr; int ptr_reg_mask; int ptr_reg_shift; int last_rptr; scalar_t__ last_activity; int /*<<< orphan*/  rptr_reg; } ;
struct radeon_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (scalar_t__) ; 
 unsigned long radeon_lockup_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

bool FUNC5(struct radeon_device *rdev, struct radeon_ring *ring)
{
	unsigned long cjiffies, elapsed;
	uint32_t rptr;

	cjiffies = jiffies;
	if (!FUNC4(cjiffies, ring->last_activity)) {
		/* likely a wrap around */
		FUNC3(ring);
		return false;
	}
	rptr = FUNC0(ring->rptr_reg);
	ring->rptr = (rptr & ring->ptr_reg_mask) >> ring->ptr_reg_shift;
	if (ring->rptr != ring->last_rptr) {
		/* CP is still working no lockup */
		FUNC3(ring);
		return false;
	}
	elapsed = FUNC2(cjiffies - ring->last_activity);
	if (radeon_lockup_timeout && elapsed >= radeon_lockup_timeout) {
		FUNC1(rdev->dev, "GPU lockup CP stall for more than %lumsec\n", elapsed);
		return true;
	}
	/* give a chance to the GPU ... */
	return false;
}