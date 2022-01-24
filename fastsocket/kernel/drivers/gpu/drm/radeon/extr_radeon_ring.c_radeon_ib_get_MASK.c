#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct radeon_vm {int dummy; } ;
struct radeon_ib {int ring; int is_const_ib; int /*<<< orphan*/ ** sync_to; TYPE_1__* sa_bo; scalar_t__ gpu_addr; struct radeon_vm* vm; int /*<<< orphan*/  ptr; int /*<<< orphan*/ * fence; int /*<<< orphan*/  semaphore; } ;
struct radeon_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ring_tmp_bo; } ;
struct TYPE_4__ {scalar_t__ soffset; } ;

/* Variables and functions */
 int RADEON_NUM_RINGS ; 
 scalar_t__ RADEON_VA_IB_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ *,TYPE_1__**,unsigned int,int,int) ; 
 int FUNC4 (struct radeon_device*,int /*<<< orphan*/ *) ; 

int FUNC5(struct radeon_device *rdev, int ring,
		  struct radeon_ib *ib, struct radeon_vm *vm,
		  unsigned size)
{
	int i, r;

	r = FUNC3(rdev, &rdev->ring_tmp_bo, &ib->sa_bo, size, 256, true);
	if (r) {
		FUNC0(rdev->dev, "failed to get a new IB (%d)\n", r);
		return r;
	}

	r = FUNC4(rdev, &ib->semaphore);
	if (r) {
		return r;
	}

	ib->ring = ring;
	ib->fence = NULL;
	ib->ptr = FUNC1(ib->sa_bo);
	ib->vm = vm;
	if (vm) {
		/* ib pool is bound at RADEON_VA_IB_OFFSET in virtual address
		 * space and soffset is the offset inside the pool bo
		 */
		ib->gpu_addr = ib->sa_bo->soffset + RADEON_VA_IB_OFFSET;
	} else {
		ib->gpu_addr = FUNC2(ib->sa_bo);
	}
	ib->is_const_ib = false;
	for (i = 0; i < RADEON_NUM_RINGS; ++i)
		ib->sync_to[i] = NULL;

	return 0;
}