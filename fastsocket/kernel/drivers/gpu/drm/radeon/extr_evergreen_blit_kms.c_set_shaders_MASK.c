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
typedef  int u64 ;
struct radeon_ring {int dummy; } ;
struct TYPE_2__ {int shader_gpu_addr; int vs_offset; int ps_offset; } ;
struct radeon_device {TYPE_1__ r600_blit; struct radeon_ring* ring; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_CONTEXT_REG ; 
 int PACKET3_SET_CONTEXT_REG_START ; 
 int /*<<< orphan*/  PACKET3_SH_ACTION_ENA ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int SQ_PGM_START_PS ; 
 int SQ_PGM_START_VS ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_ring*,int) ; 

__attribute__((used)) static void
FUNC3(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	u64 gpu_addr;

	/* VS */
	gpu_addr = rdev->r600_blit.shader_gpu_addr + rdev->r600_blit.vs_offset;
	FUNC2(ring, FUNC0(PACKET3_SET_CONTEXT_REG, 3));
	FUNC2(ring, (SQ_PGM_START_VS - PACKET3_SET_CONTEXT_REG_START) >> 2);
	FUNC2(ring, gpu_addr >> 8);
	FUNC2(ring, 2);
	FUNC2(ring, 0);

	/* PS */
	gpu_addr = rdev->r600_blit.shader_gpu_addr + rdev->r600_blit.ps_offset;
	FUNC2(ring, FUNC0(PACKET3_SET_CONTEXT_REG, 4));
	FUNC2(ring, (SQ_PGM_START_PS - PACKET3_SET_CONTEXT_REG_START) >> 2);
	FUNC2(ring, gpu_addr >> 8);
	FUNC2(ring, 1);
	FUNC2(ring, 0);
	FUNC2(ring, 2);

	gpu_addr = rdev->r600_blit.shader_gpu_addr + rdev->r600_blit.vs_offset;
	FUNC1(rdev, PACKET3_SH_ACTION_ENA, 512, gpu_addr);
}