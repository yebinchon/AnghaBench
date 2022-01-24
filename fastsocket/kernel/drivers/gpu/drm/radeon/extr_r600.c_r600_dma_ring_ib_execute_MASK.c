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
typedef  int u32 ;
struct radeon_ring {int wptr; int next_rptr_gpu_addr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_ring* ring; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_PACKET_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  DMA_PACKET_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 
 int FUNC2 (int) ; 

void FUNC3(struct radeon_device *rdev, struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];

	if (rdev->wb.enabled) {
		u32 next_rptr = ring->wptr + 4;
		while ((next_rptr & 7) != 5)
			next_rptr++;
		next_rptr += 3;
		FUNC1(ring, FUNC0(DMA_PACKET_WRITE, 0, 0, 1));
		FUNC1(ring, ring->next_rptr_gpu_addr & 0xfffffffc);
		FUNC1(ring, FUNC2(ring->next_rptr_gpu_addr) & 0xff);
		FUNC1(ring, next_rptr);
	}

	/* The indirect buffer packet must end on an 8 DW boundary in the DMA ring.
	 * Pad as necessary with NOPs.
	 */
	while ((ring->wptr & 7) != 5)
		FUNC1(ring, FUNC0(DMA_PACKET_NOP, 0, 0, 0));
	FUNC1(ring, FUNC0(DMA_PACKET_INDIRECT_BUFFER, 0, 0, 0));
	FUNC1(ring, (ib->gpu_addr & 0xFFFFFFE0));
	FUNC1(ring, (ib->length_dw << 16) | (FUNC2(ib->gpu_addr) & 0xFF));

}