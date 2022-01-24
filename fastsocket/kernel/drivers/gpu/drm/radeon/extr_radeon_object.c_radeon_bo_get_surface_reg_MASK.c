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
struct radeon_surface_reg {struct radeon_bo* bo; } ;
struct radeon_device {struct radeon_surface_reg* surface_regs; } ;
struct TYPE_3__ {int start; } ;
struct TYPE_4__ {int num_pages; TYPE_1__ mem; } ;
struct radeon_bo {size_t surface_reg; scalar_t__ pin_count; TYPE_2__ tbo; int /*<<< orphan*/  pitch; int /*<<< orphan*/  tiling_flags; struct radeon_device* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct radeon_bo*) ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int RADEON_GEM_MAX_SURFACES ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(struct radeon_bo *bo)
{
	struct radeon_device *rdev = bo->rdev;
	struct radeon_surface_reg *reg;
	struct radeon_bo *old_object;
	int steal;
	int i;

	FUNC0(!FUNC2(bo));

	if (!bo->tiling_flags)
		return 0;

	if (bo->surface_reg >= 0) {
		reg = &rdev->surface_regs[bo->surface_reg];
		i = bo->surface_reg;
		goto out;
	}

	steal = -1;
	for (i = 0; i < RADEON_GEM_MAX_SURFACES; i++) {

		reg = &rdev->surface_regs[i];
		if (!reg->bo)
			break;

		old_object = reg->bo;
		if (old_object->pin_count == 0)
			steal = i;
	}

	/* if we are all out */
	if (i == RADEON_GEM_MAX_SURFACES) {
		if (steal == -1)
			return -ENOMEM;
		/* find someone with a surface reg and nuke their BO */
		reg = &rdev->surface_regs[steal];
		old_object = reg->bo;
		/* blow away the mapping */
		FUNC1("stealing surface reg %d from %p\n", steal, old_object);
		FUNC4(&old_object->tbo);
		old_object->surface_reg = -1;
		i = steal;
	}

	bo->surface_reg = i;
	reg->bo = bo;

out:
	FUNC3(rdev, i, bo->tiling_flags, bo->pitch,
			       bo->tbo.mem.start << PAGE_SHIFT,
			       bo->tbo.num_pages << PAGE_SHIFT);
	return 0;
}