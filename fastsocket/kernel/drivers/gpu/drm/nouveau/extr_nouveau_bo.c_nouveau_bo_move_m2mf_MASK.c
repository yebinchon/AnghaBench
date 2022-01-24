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
struct ttm_mem_reg {struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; int /*<<< orphan*/  bdev; } ;
struct nouveau_mem {int /*<<< orphan*/ * vma; } ;
struct TYPE_4__ {int (* move ) (struct nouveau_channel*,struct ttm_buffer_object*,struct ttm_mem_reg*,struct ttm_mem_reg*) ;} ;
struct nouveau_drm {TYPE_1__ ttm; int /*<<< orphan*/  device; struct nouveau_channel* channel; } ;
struct nouveau_channel {TYPE_2__* cli; } ;
struct nouveau_bo {int dummy; } ;
struct TYPE_6__ {scalar_t__ card_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 struct nouveau_channel* chan ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC3 (struct ttm_buffer_object*) ; 
 int FUNC4 (struct nouveau_channel*,struct nouveau_bo*,int,int,struct ttm_mem_reg*) ; 
 int FUNC5 (struct nouveau_channel*,struct nouveau_bo*,struct ttm_mem_reg*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nouveau_channel*,struct ttm_buffer_object*,struct ttm_mem_reg*,struct ttm_mem_reg*) ; 

__attribute__((used)) static int
FUNC8(struct ttm_buffer_object *bo, int evict, bool intr,
		     bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
	struct nouveau_drm *drm = FUNC2(bo->bdev);
	struct nouveau_channel *chan = chan = drm->channel;
	struct nouveau_bo *nvbo = FUNC3(bo);
	struct ttm_mem_reg *old_mem = &bo->mem;
	int ret;

	FUNC0(&chan->cli->mutex);

	/* create temporary vmas for the transfer and attach them to the
	 * old nouveau_mem node, these will get cleaned up after ttm has
	 * destroyed the ttm_mem_reg
	 */
	if (FUNC6(drm->device)->card_type >= NV_50) {
		struct nouveau_mem *node = old_mem->mm_node;

		ret = FUNC5(chan, nvbo, old_mem, &node->vma[0]);
		if (ret)
			goto out;

		ret = FUNC5(chan, nvbo, new_mem, &node->vma[1]);
		if (ret)
			goto out;
	}

	ret = drm->ttm.move(chan, bo, &bo->mem, new_mem);
	if (ret == 0) {
		ret = FUNC4(chan, nvbo, evict,
						    no_wait_gpu, new_mem);
	}

out:
	FUNC1(&chan->cli->mutex);
	return ret;
}