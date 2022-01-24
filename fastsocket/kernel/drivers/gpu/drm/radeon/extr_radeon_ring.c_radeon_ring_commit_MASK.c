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
struct radeon_ring {int wptr; int align_mask; int ptr_reg_shift; int ptr_reg_mask; int /*<<< orphan*/  wptr_reg; int /*<<< orphan*/  nop; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*,int /*<<< orphan*/ ) ; 

void FUNC4(struct radeon_device *rdev, struct radeon_ring *ring)
{
	/* We pad to match fetch size */
	while (ring->wptr & ring->align_mask) {
		FUNC3(ring, ring->nop);
	}
	FUNC0();
	FUNC2(ring->wptr_reg, (ring->wptr << ring->ptr_reg_shift) & ring->ptr_reg_mask);
	(void)FUNC1(ring->wptr_reg);
}