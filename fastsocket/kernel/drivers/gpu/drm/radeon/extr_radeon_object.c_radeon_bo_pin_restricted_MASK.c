#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ lpfn; int num_placement; } ;
struct radeon_bo {int pin_count; TYPE_2__* rdev; TYPE_3__ placement; int /*<<< orphan*/  tbo; int /*<<< orphan*/ * placements; } ;
struct TYPE_4__ {scalar_t__ vram_start; scalar_t__ gtt_start; scalar_t__ visible_vram_size; scalar_t__ gtt_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; TYPE_1__ mc; } ;

/* Variables and functions */
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ RADEON_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  TTM_PL_FLAG_NO_EVICT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct radeon_bo*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_bo*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct radeon_bo *bo, u32 domain, u64 max_offset,
			     u64 *gpu_addr)
{
	int r, i;

	if (bo->pin_count) {
		bo->pin_count++;
		if (gpu_addr)
			*gpu_addr = FUNC3(bo);

		if (max_offset != 0) {
			u64 domain_start;

			if (domain == RADEON_GEM_DOMAIN_VRAM)
				domain_start = bo->rdev->mc.vram_start;
			else
				domain_start = bo->rdev->mc.gtt_start;
			FUNC0(max_offset <
				     (FUNC3(bo) - domain_start));
		}

		return 0;
	}
	FUNC4(bo, domain);
	if (domain == RADEON_GEM_DOMAIN_VRAM) {
		/* force to pin into visible video ram */
		bo->placement.lpfn = bo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
	}
	if (max_offset) {
		u64 lpfn = max_offset >> PAGE_SHIFT;

		if (!bo->placement.lpfn)
			bo->placement.lpfn = bo->rdev->mc.gtt_size >> PAGE_SHIFT;

		if (lpfn < bo->placement.lpfn)
			bo->placement.lpfn = lpfn;
	}
	for (i = 0; i < bo->placement.num_placement; i++)
		bo->placements[i] |= TTM_PL_FLAG_NO_EVICT;
	r = FUNC5(&bo->tbo, &bo->placement, false, false);
	if (FUNC2(r == 0)) {
		bo->pin_count = 1;
		if (gpu_addr != NULL)
			*gpu_addr = FUNC3(bo);
	}
	if (FUNC6(r != 0))
		FUNC1(bo->rdev->dev, "%p pin failed\n", bo);
	return r;
}