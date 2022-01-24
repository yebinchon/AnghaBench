#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sg_table {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  mclk_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev_mapping; } ;
struct TYPE_7__ {TYPE_3__ bdev; } ;
struct radeon_device {TYPE_2__ pm; TYPE_1__ mman; TYPE_5__* ddev; } ;
struct TYPE_11__ {int /*<<< orphan*/ * driver_private; } ;
struct radeon_bo {int surface_reg; int /*<<< orphan*/  placement; int /*<<< orphan*/  tbo; int /*<<< orphan*/  va; int /*<<< orphan*/  list; TYPE_6__ gem_base; struct radeon_device* rdev; } ;
typedef  enum ttm_bo_type { ____Placeholder_ttm_bo_type } ttm_bo_type ;
struct TYPE_10__ {int /*<<< orphan*/  dev_mapping; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_5__*,TYPE_6__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_bo*) ; 
 struct radeon_bo* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_ttm_bo_destroy ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_bo*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_bo*) ; 
 size_t FUNC9 (TYPE_3__*,unsigned long,int) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ *,size_t,struct sg_table*,int /*<<< orphan*/ *) ; 
 int ttm_bo_type_device ; 
 int ttm_bo_type_kernel ; 
 int ttm_bo_type_sg ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct radeon_device *rdev,
		     unsigned long size, int byte_align, bool kernel, u32 domain,
		     struct sg_table *sg, struct radeon_bo **bo_ptr)
{
	struct radeon_bo *bo;
	enum ttm_bo_type type;
	unsigned long page_align = FUNC7(byte_align, PAGE_SIZE) >> PAGE_SHIFT;
	size_t acc_size;
	int r;

	size = FUNC0(size, PAGE_SIZE);

	rdev->mman.bdev.dev_mapping = rdev->ddev->dev_mapping;
	if (kernel) {
		type = ttm_bo_type_kernel;
	} else if (sg) {
		type = ttm_bo_type_sg;
	} else {
		type = ttm_bo_type_device;
	}
	*bo_ptr = NULL;

	acc_size = FUNC9(&rdev->mman.bdev, size,
				       sizeof(struct radeon_bo));

	bo = FUNC5(sizeof(struct radeon_bo), GFP_KERNEL);
	if (bo == NULL)
		return -ENOMEM;
	r = FUNC3(rdev->ddev, &bo->gem_base, size);
	if (FUNC11(r)) {
		FUNC4(bo);
		return r;
	}
	bo->rdev = rdev;
	bo->gem_base.driver_private = NULL;
	bo->surface_reg = -1;
	FUNC1(&bo->list);
	FUNC1(&bo->va);
	FUNC6(bo, domain);
	/* Kernel allocation are uninterruptible */
	FUNC2(&rdev->pm.mclk_lock);
	r = FUNC10(&rdev->mman.bdev, &bo->tbo, size, type,
			&bo->placement, page_align, !kernel, NULL,
			acc_size, sg, &radeon_ttm_bo_destroy);
	FUNC12(&rdev->pm.mclk_lock);
	if (FUNC11(r != 0)) {
		return r;
	}
	*bo_ptr = bo;

	FUNC8(bo);

	return 0;
}