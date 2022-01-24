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
struct ttm_tt {scalar_t__ state; TYPE_2__* bdev; } ;
struct ttm_mem_type_manager {int flags; } ;
struct ttm_mem_reg {size_t mem_type; scalar_t__ start; scalar_t__ size; int num_pages; int /*<<< orphan*/ * mm_node; int /*<<< orphan*/  placement; } ;
struct ttm_buffer_object {struct ttm_tt* ttm; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* ttm_tt_populate ) (struct ttm_tt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int TTM_MEMTYPE_FLAG_FIXED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ttm_tt*) ; 
 scalar_t__ tt_unpopulated ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC3 (void*,void*,unsigned long) ; 
 int FUNC4 (struct ttm_tt*,void*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ttm_tt*,void*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ttm_bo_device*,struct ttm_mem_reg*,void**) ; 
 int /*<<< orphan*/  FUNC8 (struct ttm_bo_device*,struct ttm_mem_reg*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_tt*) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_tt*) ; 

int FUNC11(struct ttm_buffer_object *bo,
		       bool evict, bool no_wait_gpu,
		       struct ttm_mem_reg *new_mem)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_mem_type_manager *man = &bdev->man[new_mem->mem_type];
	struct ttm_tt *ttm = bo->ttm;
	struct ttm_mem_reg *old_mem = &bo->mem;
	struct ttm_mem_reg old_copy = *old_mem;
	void *old_iomap;
	void *new_iomap;
	int ret;
	unsigned long i;
	unsigned long page;
	unsigned long add = 0;
	int dir;

	ret = FUNC7(bdev, old_mem, &old_iomap);
	if (ret)
		return ret;
	ret = FUNC7(bdev, new_mem, &new_iomap);
	if (ret)
		goto out;

	if (old_iomap == NULL && new_iomap == NULL)
		goto out2;
	if (old_iomap == NULL && ttm == NULL)
		goto out2;

	if (ttm->state == tt_unpopulated) {
		ret = ttm->bdev->driver->ttm_tt_populate(ttm);
		if (ret) {
			/* if we fail here don't nuke the mm node
			 * as the bo still owns it */
			old_copy.mm_node = NULL;
			goto out1;
		}
	}

	add = 0;
	dir = 1;

	if ((old_mem->mem_type == new_mem->mem_type) &&
	    (new_mem->start < old_mem->start + old_mem->size)) {
		dir = -1;
		add = new_mem->num_pages - 1;
	}

	for (i = 0; i < new_mem->num_pages; ++i) {
		page = i * dir + add;
		if (old_iomap == NULL) {
			pgprot_t prot = FUNC6(old_mem->placement,
						    PAGE_KERNEL);
			ret = FUNC5(ttm, new_iomap, page,
						   prot);
		} else if (new_iomap == NULL) {
			pgprot_t prot = FUNC6(new_mem->placement,
						    PAGE_KERNEL);
			ret = FUNC4(ttm, old_iomap, page,
						   prot);
		} else
			ret = FUNC3(new_iomap, old_iomap, page);
		if (ret) {
			/* failing here, means keep old copy as-is */
			old_copy.mm_node = NULL;
			goto out1;
		}
	}
	FUNC0();
out2:
	old_copy = *old_mem;
	*old_mem = *new_mem;
	new_mem->mm_node = NULL;

	if ((man->flags & TTM_MEMTYPE_FLAG_FIXED) && (ttm != NULL)) {
		FUNC10(ttm);
		FUNC9(ttm);
		bo->ttm = NULL;
	}

out1:
	FUNC8(bdev, old_mem, new_iomap);
out:
	FUNC8(bdev, &old_copy, old_iomap);
	FUNC2(bo, &old_copy);
	return ret;
}