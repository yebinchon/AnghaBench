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
struct ttm_buffer_object {int /*<<< orphan*/  sg; } ;
struct nouveau_bo {int pin_refcnt; struct ttm_buffer_object bo; int /*<<< orphan*/ * gem; } ;
struct drm_gem_object {scalar_t__ import_attach; struct nouveau_bo* driver_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bo*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object**) ; 
 scalar_t__ FUNC5 (int) ; 

void
FUNC6(struct drm_gem_object *gem)
{
	struct nouveau_bo *nvbo = gem->driver_private;
	struct ttm_buffer_object *bo = &nvbo->bo;

	if (!nvbo)
		return;
	nvbo->gem = NULL;

	if (FUNC5(nvbo->pin_refcnt)) {
		nvbo->pin_refcnt = 1;
		FUNC3(nvbo);
	}

	if (gem->import_attach)
		FUNC1(gem, nvbo->bo.sg);

	FUNC4(&bo);

	FUNC0(gem);
	FUNC2(gem);
}