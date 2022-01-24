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
struct radeon_ring {int /*<<< orphan*/  ready; } ;
struct radeon_ib {size_t ring; void* fence; TYPE_1__* vm; int /*<<< orphan*/  semaphore; struct radeon_fence** sync_to; int /*<<< orphan*/  length_dw; } ;
struct radeon_fence {int /*<<< orphan*/  ring; } ;
struct radeon_device {int /*<<< orphan*/  dev; struct radeon_ring* ring; } ;
struct TYPE_2__ {void* last_flush; } ;

/* Variables and functions */
 int EINVAL ; 
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct radeon_device*,void**,size_t) ; 
 scalar_t__ FUNC2 (struct radeon_fence*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_fence*,size_t) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,size_t,struct radeon_ib*) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

int FUNC12(struct radeon_device *rdev, struct radeon_ib *ib,
		       struct radeon_ib *const_ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];
	bool need_sync = false;
	int i, r = 0;

	if (!ib->length_dw || !ring->ready) {
		/* TODO: Nothings in the ib we should report. */
		FUNC0(rdev->dev, "couldn't schedule ib\n");
		return -EINVAL;
	}

	/* 64 dwords should be enough for fence too */
	r = FUNC6(rdev, ring, 64 + RADEON_NUM_RINGS * 8);
	if (r) {
		FUNC0(rdev->dev, "scheduling IB failed (%d).\n", r);
		return r;
	}
	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		struct radeon_fence *fence = ib->sync_to[i];
		if (FUNC2(fence, ib->ring)) {
			need_sync = true;
			FUNC11(rdev, ib->semaphore,
						    fence->ring, ib->ring);
			FUNC3(fence, ib->ring);
		}
	}
	/* immediately free semaphore when we don't need to sync */
	if (!need_sync) {
		FUNC10(rdev, &ib->semaphore, NULL);
	}
	/* if we can't remember our last VM flush then flush now! */
	/* XXX figure out why we have to flush for every IB */
	if (ib->vm /*&& !ib->vm->last_flush*/) {
		FUNC9(rdev, ib->ring, ib->vm);
	}
	if (const_ib) {
		FUNC5(rdev, const_ib->ring, const_ib);
		FUNC10(rdev, &const_ib->semaphore, NULL);
	}
	FUNC5(rdev, ib->ring, ib);
	r = FUNC1(rdev, &ib->fence, ib->ring);
	if (r) {
		FUNC0(rdev->dev, "failed to emit fence for new IB (%d)\n", r);
		FUNC8(rdev, ring);
		return r;
	}
	if (const_ib) {
		const_ib->fence = FUNC4(ib->fence);
	}
	/* we just flushed the VM, remember that */
	if (ib->vm && !ib->vm->last_flush) {
		ib->vm->last_flush = FUNC4(ib->fence);
	}
	FUNC7(rdev, ring);
	return 0;
}