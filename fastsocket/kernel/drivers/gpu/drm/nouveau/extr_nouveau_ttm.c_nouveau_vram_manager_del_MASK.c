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
struct ttm_mem_type_manager {int /*<<< orphan*/  bdev; } ;
struct ttm_mem_reg {int /*<<< orphan*/  mm_node; } ;
struct nouveau_mem {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put ) (struct nouveau_fb*,struct nouveau_mem**) ;} ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_fb* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_fb*,struct nouveau_mem**) ; 

__attribute__((used)) static void
FUNC4(struct ttm_mem_type_manager *man,
			 struct ttm_mem_reg *mem)
{
	struct nouveau_drm *drm = FUNC0(man->bdev);
	struct nouveau_fb *pfb = FUNC1(drm->device);
	FUNC2(mem->mm_node);
	pfb->ram.put(pfb, (struct nouveau_mem **)&mem->mm_node);
}