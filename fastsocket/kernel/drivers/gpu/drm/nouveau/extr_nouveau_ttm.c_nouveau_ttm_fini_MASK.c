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
struct TYPE_4__ {int mtrr; int /*<<< orphan*/  bdev; } ;
struct nouveau_drm {TYPE_2__ ttm; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MTRR_WC ; 
 int /*<<< orphan*/  TTM_PL_TT ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct nouveau_drm *drm)
{
	FUNC1(&drm->dev->struct_mutex);
	FUNC6(&drm->ttm.bdev, TTM_PL_VRAM);
	FUNC6(&drm->ttm.bdev, TTM_PL_TT);
	FUNC2(&drm->dev->struct_mutex);

	FUNC7(&drm->ttm.bdev);

	FUNC3(drm);

	if (drm->ttm.mtrr >= 0) {
		FUNC0(drm->ttm.mtrr,
			     FUNC5(drm->dev->pdev, 1),
			     FUNC4(drm->dev->pdev, 1), DRM_MTRR_WC);
		drm->ttm.mtrr = -1;
	}
}