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
typedef  int uint32_t ;
struct TYPE_4__ {int mem_type; int /*<<< orphan*/  size; } ;
struct ttm_buffer_object {TYPE_2__ mem; int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  gart_available; int /*<<< orphan*/  vram_available; } ;
struct nouveau_drm {TYPE_1__ gem; } ;
struct nouveau_bo {scalar_t__ pin_refcnt; struct ttm_buffer_object bo; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,struct ttm_buffer_object*,int,int) ; 
#define  TTM_PL_TT 129 
#define  TTM_PL_VRAM 128 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bo*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nouveau_bo*,int,int) ; 
 int FUNC4 (struct ttm_buffer_object*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_buffer_object*) ; 

int
FUNC6(struct nouveau_bo *nvbo, uint32_t memtype)
{
	struct nouveau_drm *drm = FUNC1(nvbo->bo.bdev);
	struct ttm_buffer_object *bo = &nvbo->bo;
	int ret;

	ret = FUNC4(bo, false, false, false, 0);
	if (ret)
		goto out;

	if (nvbo->pin_refcnt && !(memtype & (1 << bo->mem.mem_type))) {
		FUNC0(drm, "bo %p pinned elsewhere: 0x%08x vs 0x%08x\n", bo,
			 1 << bo->mem.mem_type, memtype);
		ret = -EINVAL;
		goto out;
	}

	if (nvbo->pin_refcnt++)
		goto out;

	FUNC2(nvbo, memtype, 0);

	ret = FUNC3(nvbo, false, false);
	if (ret == 0) {
		switch (bo->mem.mem_type) {
		case TTM_PL_VRAM:
			drm->gem.vram_available -= bo->mem.size;
			break;
		case TTM_PL_TT:
			drm->gem.gart_available -= bo->mem.size;
			break;
		default:
			break;
		}
	}
out:
	FUNC5(bo);
	return ret;
}