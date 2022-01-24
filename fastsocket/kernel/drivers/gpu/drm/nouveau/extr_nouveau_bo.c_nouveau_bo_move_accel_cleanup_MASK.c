#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ttm_mem_reg {int dummy; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_channel {int dummy; } ;
struct nouveau_bo {int /*<<< orphan*/  bo; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_channel*,int,struct nouveau_fence**) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_fence**) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct nouveau_fence*,int,int,struct ttm_mem_reg*) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_channel *chan,
			      struct nouveau_bo *nvbo, bool evict,
			      bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
	struct nouveau_fence *fence = NULL;
	int ret;

	ret = FUNC0(chan, false, &fence);
	if (ret)
		return ret;

	ret = FUNC2(&nvbo->bo, fence, evict,
					no_wait_gpu, new_mem);
	FUNC1(&fence);
	return ret;
}