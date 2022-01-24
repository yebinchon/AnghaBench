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
struct radeon_ring {unsigned int ring_size; int align_mask; scalar_t__ rptr_save_reg; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct radeon_device*,struct radeon_ring*) ; 
 int FUNC3 (struct radeon_device*,scalar_t__*) ; 

void FUNC4(struct radeon_device *rdev, struct radeon_ring *ring, unsigned ring_size)
{
	u32 rb_bufsz;
	int r;

	/* Align ring size */
	rb_bufsz = FUNC1(ring_size / 8);
	ring_size = (1 << (rb_bufsz + 1)) * 4;
	ring->ring_size = ring_size;
	ring->align_mask = 16 - 1;

	if (FUNC2(rdev, ring)) {
		r = FUNC3(rdev, &ring->rptr_save_reg);
		if (r) {
			FUNC0("failed to get scratch reg for rptr save (%d).\n", r);
			ring->rptr_save_reg = 0;
		}
	}
}