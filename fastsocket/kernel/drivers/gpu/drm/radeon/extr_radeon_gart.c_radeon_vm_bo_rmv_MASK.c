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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;
struct radeon_bo_va {int /*<<< orphan*/  bo_list; TYPE_2__* vm; int /*<<< orphan*/  vm_list; int /*<<< orphan*/  bo; scalar_t__ soffset; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_bo_va*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct radeon_device*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct radeon_device *rdev,
		     struct radeon_bo_va *bo_va)
{
	int r = 0;

	FUNC2(&rdev->vm_manager.lock);
	FUNC2(&bo_va->vm->mutex);
	if (bo_va->soffset) {
		r = FUNC4(rdev, bo_va->vm, bo_va->bo, NULL);
	}
	FUNC3(&rdev->vm_manager.lock);
	FUNC1(&bo_va->vm_list);
	FUNC3(&bo_va->vm->mutex);
	FUNC1(&bo_va->bo_list);

	FUNC0(bo_va);
	return r;
}