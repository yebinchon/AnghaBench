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
struct ttm_buffer_object {int /*<<< orphan*/  bdev; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct nouveau_bo {int /*<<< orphan*/  tile; int /*<<< orphan*/  gem; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bo*) ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC3 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ttm_buffer_object *bo)
{
	struct nouveau_drm *drm = FUNC2(bo->bdev);
	struct drm_device *dev = drm->dev;
	struct nouveau_bo *nvbo = FUNC3(bo);

	if (FUNC5(nvbo->gem))
		FUNC0("bo %p still attached to GEM object\n", bo);
	FUNC4(dev, nvbo->tile, NULL);
	FUNC1(nvbo);
}