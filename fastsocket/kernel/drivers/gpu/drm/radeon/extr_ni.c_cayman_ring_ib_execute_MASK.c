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
typedef  int uint32_t ;
struct radeon_ring {int rptr_save_reg; int wptr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; TYPE_1__* vm; } ;
struct radeon_device {struct radeon_ring* ring; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int CP_COHER_CNTL2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_MODE_CONTROL ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_START ; 
 int PACKET3_SH_ACTION_ENA ; 
 int /*<<< orphan*/  PACKET3_SURFACE_SYNC ; 
 int PACKET3_TC_ACTION_ENA ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 
 int FUNC2 (int) ; 

void FUNC3(struct radeon_device *rdev, struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];

	/* set to DX10/11 mode */
	FUNC1(ring, FUNC0(PACKET3_MODE_CONTROL, 0));
	FUNC1(ring, 1);

	if (ring->rptr_save_reg) {
		uint32_t next_rptr = ring->wptr + 3 + 4 + 8;
		FUNC1(ring, FUNC0(PACKET3_SET_CONFIG_REG, 1));
		FUNC1(ring, ((ring->rptr_save_reg - 
					  PACKET3_SET_CONFIG_REG_START) >> 2));
		FUNC1(ring, next_rptr);
	}

	FUNC1(ring, FUNC0(PACKET3_INDIRECT_BUFFER, 2));
	FUNC1(ring,
#ifdef __BIG_ENDIAN
			  (2 << 0) |
#endif
			  (ib->gpu_addr & 0xFFFFFFFC));
	FUNC1(ring, FUNC2(ib->gpu_addr) & 0xFF);
	FUNC1(ring, ib->length_dw | 
			  (ib->vm ? (ib->vm->id << 24) : 0));

	/* flush read cache over gart for this vmid */
	FUNC1(ring, FUNC0(PACKET3_SET_CONFIG_REG, 1));
	FUNC1(ring, (CP_COHER_CNTL2 - PACKET3_SET_CONFIG_REG_START) >> 2);
	FUNC1(ring, ib->vm ? ib->vm->id : 0);
	FUNC1(ring, FUNC0(PACKET3_SURFACE_SYNC, 3));
	FUNC1(ring, PACKET3_TC_ACTION_ENA | PACKET3_SH_ACTION_ENA);
	FUNC1(ring, 0xFFFFFFFF);
	FUNC1(ring, 0);
	FUNC1(ring, 10); /* poll interval */
}