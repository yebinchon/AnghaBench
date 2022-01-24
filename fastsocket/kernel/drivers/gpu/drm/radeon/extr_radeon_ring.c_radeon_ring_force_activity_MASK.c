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
struct radeon_ring {scalar_t__ rptr; scalar_t__ wptr; int /*<<< orphan*/  nop; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*,int /*<<< orphan*/ ) ; 

void FUNC4(struct radeon_device *rdev, struct radeon_ring *ring)
{
	int r;

	FUNC2(rdev, ring);
	if (ring->rptr == ring->wptr) {
		r = FUNC0(rdev, ring, 1);
		if (!r) {
			FUNC3(ring, ring->nop);
			FUNC1(rdev, ring);
		}
	}
}