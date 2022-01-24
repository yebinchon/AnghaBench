#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_15__ {int vram_available; int gart_available; } ;
struct TYPE_10__ {int /*<<< orphan*/  object; } ;
struct TYPE_11__ {TYPE_1__ ref; } ;
struct TYPE_14__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  mtrr; TYPE_2__ bo_global_ref; } ;
struct TYPE_13__ {scalar_t__ stat; int size; } ;
struct nouveau_drm {TYPE_6__ gem; TYPE_5__ ttm; TYPE_4__ agp; int /*<<< orphan*/  device; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  pdev; } ;
struct TYPE_12__ {int size; } ;
struct TYPE_18__ {TYPE_3__ ram; } ;
struct TYPE_17__ {scalar_t__ reserved; } ;
struct TYPE_16__ {int dma_bits; int limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRM_FILE_PAGE_OFFSET ; 
 int /*<<< orphan*/  DRM_MTRR_WC ; 
 scalar_t__ ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_drm*,char*,int) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  TTM_PL_TT ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nouveau_bo_driver ; 
 TYPE_9__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nouveau_drm*) ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC15(struct nouveau_drm *drm)
{
	struct drm_device *dev = drm->dev;
	u32 bits;
	int ret;

	bits = FUNC7(drm->device)->dma_bits;
	if ( drm->agp.stat == ENABLED ||
	    !FUNC8(dev->pdev, FUNC0(bits)))
		bits = 32;

	ret = FUNC12(dev->pdev, FUNC0(bits));
	if (ret)
		return ret;

	ret = FUNC11(dev->pdev, FUNC0(bits));
	if (ret)
		FUNC11(dev->pdev, FUNC0(32));

	ret = FUNC6(drm);
	if (ret)
		return ret;

	ret = FUNC13(&drm->ttm.bdev,
				  drm->ttm.bo_global_ref.ref.object,
				  &nouveau_bo_driver, DRM_FILE_PAGE_OFFSET,
				  bits <= 32 ? true : false);
	if (ret) {
		FUNC1(drm, "error initialising bo driver, %d\n", ret);
		return ret;
	}

	/* VRAM init */
	drm->gem.vram_available  = FUNC4(drm->device)->ram.size;
	drm->gem.vram_available -= FUNC5(drm->device)->reserved;

	ret = FUNC14(&drm->ttm.bdev, TTM_PL_VRAM,
			      drm->gem.vram_available >> PAGE_SHIFT);
	if (ret) {
		FUNC1(drm, "VRAM mm init failed, %d\n", ret);
		return ret;
	}

	drm->ttm.mtrr = FUNC3(FUNC10(dev->pdev, 1),
				     FUNC9(dev->pdev, 1),
				     DRM_MTRR_WC);

	/* GART init */
	if (drm->agp.stat != ENABLED) {
		drm->gem.gart_available = FUNC7(drm->device)->limit;
		if (drm->gem.gart_available > 512 * 1024 * 1024)
			drm->gem.gart_available = 512 * 1024 * 1024;
	} else {
		drm->gem.gart_available = drm->agp.size;
	}

	ret = FUNC14(&drm->ttm.bdev, TTM_PL_TT,
			      drm->gem.gart_available >> PAGE_SHIFT);
	if (ret) {
		FUNC1(drm, "GART mm init failed, %d\n", ret);
		return ret;
	}

	FUNC2(drm, "VRAM: %d MiB\n", (u32)(drm->gem.vram_available >> 20));
	FUNC2(drm, "GART: %d MiB\n", (u32)(drm->gem.gart_available >> 20));
	return 0;
}