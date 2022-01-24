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
struct nouveau_channel {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bdev; scalar_t__ sync_obj; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct TYPE_3__ {int /*<<< orphan*/  fence_lock; } ;

/* Variables and functions */
 struct nouveau_fence* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct nouveau_fence*,struct nouveau_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fence**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_channel *chan, struct nouveau_bo *nvbo)
{
	struct nouveau_fence *fence = NULL;
	int ret = 0;

	FUNC3(&nvbo->bo.bdev->fence_lock);
	if (nvbo->bo.sync_obj)
		fence = FUNC0(nvbo->bo.sync_obj);
	FUNC4(&nvbo->bo.bdev->fence_lock);

	if (fence) {
		ret = FUNC1(fence, chan);
		FUNC2(&fence);
	}

	return ret;
}