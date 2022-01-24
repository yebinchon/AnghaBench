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
typedef  int /*<<< orphan*/  u64 ;
struct radeon_vm {int /*<<< orphan*/  fence; int /*<<< orphan*/ * page_directory; int /*<<< orphan*/ * page_tables; int /*<<< orphan*/  pd_gpu_addr; } ;
struct radeon_sa_bo {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sa_manager; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADEON_GPU_PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*,struct radeon_vm*) ; 
 int FUNC10 (struct radeon_device*) ; 

int FUNC11(struct radeon_device *rdev, struct radeon_vm *vm)
{
	unsigned pd_size, pts_size;
	u64 *pd_addr;
	int r;

	if (vm == NULL) {
		return -EINVAL;
	}

	if (vm->page_directory != NULL) {
		return 0;
	}

retry:
	pd_size = FUNC1(FUNC8(rdev));
	r = FUNC7(rdev, &rdev->vm_manager.sa_manager,
			     &vm->page_directory, pd_size,
			     RADEON_GPU_PAGE_SIZE, false);
	if (r == -ENOMEM) {
		r = FUNC9(rdev, vm);
		if (r)
			return r;
		goto retry;

	} else if (r) {
		return r;
	}

	vm->pd_gpu_addr = FUNC6(vm->page_directory);

	/* Initially clear the page directory */
	pd_addr = FUNC4(vm->page_directory);
	FUNC3(pd_addr, 0, pd_size);

	pts_size = FUNC10(rdev) * sizeof(struct radeon_sa_bo *);
	vm->page_tables = FUNC2(pts_size, GFP_KERNEL);

	if (vm->page_tables == NULL) {
		FUNC0("Cannot allocate memory for page table array\n");
		FUNC5(rdev, &vm->page_directory, vm->fence);
		return -ENOMEM;
	}

	return 0;
}