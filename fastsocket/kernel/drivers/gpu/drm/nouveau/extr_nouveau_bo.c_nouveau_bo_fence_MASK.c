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
struct nouveau_fence {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bdev; struct nouveau_fence* sync_obj; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct TYPE_3__ {int /*<<< orphan*/  fence_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fence**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct nouveau_bo *nvbo, struct nouveau_fence *fence)
{
	struct nouveau_fence *old_fence = NULL;

	if (FUNC0(fence))
		FUNC1(fence);

	FUNC3(&nvbo->bo.bdev->fence_lock);
	old_fence = nvbo->bo.sync_obj;
	nvbo->bo.sync_obj = fence;
	FUNC4(&nvbo->bo.bdev->fence_lock);

	FUNC2(&old_fence);
}