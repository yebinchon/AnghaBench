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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_tt {int /*<<< orphan*/ * func; } ;
struct ttm_bo_device {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_3__ {struct ttm_tt ttm; } ;
struct nouveau_sgdma_be {TYPE_1__ ttm; int /*<<< orphan*/  dev; } ;
struct nouveau_drm {int /*<<< orphan*/  device; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NV_50 ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_sgdma_be*) ; 
 struct nouveau_sgdma_be* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC2 (struct ttm_bo_device*) ; 
 int /*<<< orphan*/  nv04_sgdma_backend ; 
 int /*<<< orphan*/  nv50_sgdma_backend ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct ttm_bo_device*,unsigned long,int /*<<< orphan*/ ,struct page*) ; 

struct ttm_tt *
FUNC5(struct ttm_bo_device *bdev,
			 unsigned long size, uint32_t page_flags,
			 struct page *dummy_read_page)
{
	struct nouveau_drm *drm = FUNC2(bdev);
	struct nouveau_sgdma_be *nvbe;

	nvbe = FUNC1(sizeof(*nvbe), GFP_KERNEL);
	if (!nvbe)
		return NULL;

	nvbe->dev = drm->dev;
	if (FUNC3(drm->device)->card_type < NV_50)
		nvbe->ttm.ttm.func = &nv04_sgdma_backend;
	else
		nvbe->ttm.ttm.func = &nv50_sgdma_backend;

	if (FUNC4(&nvbe->ttm, bdev, size, page_flags, dummy_read_page)) {
		FUNC0(nvbe);
		return NULL;
	}
	return &nvbe->ttm.ttm;
}