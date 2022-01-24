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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int,int) ; 
 unsigned int RADEON_GPU_PAGE_SHIFT ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int RADEON_WAIT_DMA_GUI_IDLE ; 
 int RADEON_WAIT_UNTIL ; 
 int FUNC3 (struct radeon_device*,struct radeon_fence**,size_t) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_ring*,int) ; 

int FUNC7(struct radeon_device *rdev,
		  uint64_t src_offset,
		  uint64_t dst_offset,
		  unsigned num_gpu_pages,
		  struct radeon_fence **fence)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	uint32_t size;
	uint32_t cur_size;
	int i, num_loops;
	int r = 0;

	/* radeon pitch is /64 */
	size = num_gpu_pages << RADEON_GPU_PAGE_SHIFT;
	num_loops = FUNC0(size, 0x1FFFFF);
	r = FUNC4(rdev, ring, num_loops * 4 + 64);
	if (r) {
		FUNC1("radeon: moving bo (%d).\n", r);
		return r;
	}
	/* Must wait for 2D idle & clean before DMA or hangs might happen */
	FUNC6(ring, FUNC2(RADEON_WAIT_UNTIL, 0));
	FUNC6(ring, (1 << 16));
	for (i = 0; i < num_loops; i++) {
		cur_size = size;
		if (cur_size > 0x1FFFFF) {
			cur_size = 0x1FFFFF;
		}
		size -= cur_size;
		FUNC6(ring, FUNC2(0x720, 2));
		FUNC6(ring, src_offset);
		FUNC6(ring, dst_offset);
		FUNC6(ring, cur_size | (1 << 31) | (1 << 30));
		src_offset += cur_size;
		dst_offset += cur_size;
	}
	FUNC6(ring, FUNC2(RADEON_WAIT_UNTIL, 0));
	FUNC6(ring, RADEON_WAIT_DMA_GUI_IDLE);
	if (fence) {
		r = FUNC3(rdev, fence, RADEON_RING_TYPE_GFX_INDEX);
	}
	FUNC5(rdev, ring);
	return r;
}