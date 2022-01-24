#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  size; scalar_t__ import_attach; struct drm_device* dev; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  bit_17; TYPE_4__ base; int /*<<< orphan*/  pages; scalar_t__ pages_pin_count; scalar_t__ pin_count; scalar_t__ phys_obj; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_6__ {int interruptible; } ;
struct TYPE_7__ {TYPE_1__ mm; } ;
typedef  TYPE_2__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_gem_object*) ; 
 int FUNC10 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC12 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_gem_object*) ; 

void FUNC14(struct drm_gem_object *gem_obj)
{
	struct drm_i915_gem_object *obj = FUNC12(gem_obj);
	struct drm_device *dev = obj->base.dev;
	drm_i915_private_t *dev_priv = dev->dev_private;

	FUNC13(obj);

	if (obj->phys_obj)
		FUNC4(dev, obj);

	obj->pin_count = 0;
	if (FUNC1(FUNC10(obj) == -ERESTARTSYS)) {
		bool was_interruptible;

		was_interruptible = dev_priv->mm.interruptible;
		dev_priv->mm.interruptible = false;

		FUNC1(FUNC10(obj));

		dev_priv->mm.interruptible = was_interruptible;
	}

	obj->pages_pin_count = 0;
	FUNC8(obj);
	FUNC7(obj);
	FUNC9(obj);

	FUNC0(obj->pages);

	if (obj->base.import_attach)
		FUNC3(&obj->base, NULL);

	FUNC2(&obj->base);
	FUNC5(dev_priv, obj->base.size);

	FUNC11(obj->bit_17);
	FUNC6(obj);
}