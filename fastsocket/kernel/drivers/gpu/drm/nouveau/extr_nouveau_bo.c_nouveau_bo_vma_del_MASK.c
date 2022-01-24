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
struct nouveau_vma {int /*<<< orphan*/  head; scalar_t__ node; } ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct TYPE_6__ {TYPE_2__* bdev; TYPE_1__ mem; } ;
struct nouveau_bo {TYPE_3__ bo; } ;
struct TYPE_5__ {int /*<<< orphan*/  fence_lock; } ;

/* Variables and functions */
 scalar_t__ TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int,int) ; 

void
FUNC6(struct nouveau_bo *nvbo, struct nouveau_vma *vma)
{
	if (vma->node) {
		if (nvbo->bo.mem.mem_type != TTM_PL_SYSTEM) {
			FUNC3(&nvbo->bo.bdev->fence_lock);
			FUNC5(&nvbo->bo, false, false, false);
			FUNC4(&nvbo->bo.bdev->fence_lock);
			FUNC2(vma);
		}

		FUNC1(vma);
		FUNC0(&vma->head);
	}
}