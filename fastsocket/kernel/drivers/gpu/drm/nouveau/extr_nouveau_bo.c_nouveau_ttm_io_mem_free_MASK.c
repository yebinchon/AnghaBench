#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_reg {struct nouveau_mem* mm_node; } ;
struct ttm_bo_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct nouveau_mem {TYPE_1__ bar_vma; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_bar {int /*<<< orphan*/  (* unmap ) (struct nouveau_bar*,TYPE_1__*) ;} ;

/* Variables and functions */
 struct nouveau_bar* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC1 (struct ttm_bo_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bar*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem)
{
	struct nouveau_drm *drm = FUNC1(bdev);
	struct nouveau_bar *bar = FUNC0(drm->device);
	struct nouveau_mem *node = mem->mm_node;

	if (!node->bar_vma.node)
		return;

	bar->unmap(bar, &node->bar_vma);
}