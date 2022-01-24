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
typedef  scalar_t__ u32 ;
struct radeon_ring {scalar_t__ rptr_save_reg; scalar_t__ wptr; } ;
struct radeon_ib {scalar_t__ length_dw; scalar_t__ gpu_addr; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ RADEON_CP_IB_BASE ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,scalar_t__) ; 

void FUNC2(struct radeon_device *rdev, struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];

	if (ring->rptr_save_reg) {
		u32 next_rptr = ring->wptr + 2 + 3;
		FUNC1(ring, FUNC0(ring->rptr_save_reg, 0));
		FUNC1(ring, next_rptr);
	}

	FUNC1(ring, FUNC0(RADEON_CP_IB_BASE, 1));
	FUNC1(ring, ib->gpu_addr);
	FUNC1(ring, ib->length_dw);
}