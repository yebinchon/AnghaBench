#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int u32 ;
struct radeon_semaphore {int dummy; } ;
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_fence {int /*<<< orphan*/  ring; } ;
struct radeon_device {struct radeon_ring* ring; TYPE_2__* asic; } ;
struct TYPE_3__ {int dma_ring_index; } ;
struct TYPE_4__ {TYPE_1__ copy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_PACKET_COPY ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 unsigned int RADEON_GPU_PAGE_SHIFT ; 
 int FUNC3 (struct radeon_device*,struct radeon_fence**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct radeon_fence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_fence*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_ring*,int) ; 
 int FUNC10 (struct radeon_device*,struct radeon_semaphore**) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct radeon_semaphore**,struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,struct radeon_semaphore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 

int FUNC14(struct radeon_device *rdev,
		       uint64_t src_offset, uint64_t dst_offset,
		       unsigned num_gpu_pages,
		       struct radeon_fence **fence)
{
	struct radeon_semaphore *sem = NULL;
	int ring_index = rdev->asic->copy.dma_ring_index;
	struct radeon_ring *ring = &rdev->ring[ring_index];
	u32 size_in_dw, cur_size_in_dw;
	int i, num_loops;
	int r = 0;

	r = FUNC10(rdev, &sem);
	if (r) {
		FUNC2("radeon: moving bo (%d).\n", r);
		return r;
	}

	size_in_dw = (num_gpu_pages << RADEON_GPU_PAGE_SHIFT) / 4;
	num_loops = FUNC0(size_in_dw, 0xfffff);
	r = FUNC6(rdev, ring, num_loops * 5 + 11);
	if (r) {
		FUNC2("radeon: moving bo (%d).\n", r);
		FUNC11(rdev, &sem, NULL);
		return r;
	}

	if (FUNC4(*fence, ring->idx)) {
		FUNC12(rdev, sem, (*fence)->ring,
					    ring->idx);
		FUNC5(*fence, ring->idx);
	} else {
		FUNC11(rdev, &sem, NULL);
	}

	for (i = 0; i < num_loops; i++) {
		cur_size_in_dw = size_in_dw;
		if (cur_size_in_dw > 0xFFFFF)
			cur_size_in_dw = 0xFFFFF;
		size_in_dw -= cur_size_in_dw;
		FUNC9(ring, FUNC1(DMA_PACKET_COPY, 0, cur_size_in_dw));
		FUNC9(ring, dst_offset & 0xfffffffc);
		FUNC9(ring, src_offset & 0xfffffffc);
		FUNC9(ring, FUNC13(dst_offset) & 0xff);
		FUNC9(ring, FUNC13(src_offset) & 0xff);
		src_offset += cur_size_in_dw * 4;
		dst_offset += cur_size_in_dw * 4;
	}

	r = FUNC3(rdev, fence, ring->idx);
	if (r) {
		FUNC8(rdev, ring);
		return r;
	}

	FUNC7(rdev, ring);
	FUNC11(rdev, &sem, *fence);

	return r;
}