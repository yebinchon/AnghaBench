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
struct drm_i915_private {TYPE_1__* fence_regs; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;
struct TYPE_3__ {struct drm_i915_gem_object* obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int,struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev, int reg,
				 struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	/* Ensure that all CPU reads are completed before installing a fence
	 * and all writes before removing the fence.
	 */
	if (FUNC3(dev_priv->fence_regs[reg].obj))
		FUNC6();

	switch (FUNC1(dev)->gen) {
	case 7:
	case 6:
	case 5:
	case 4: FUNC5(dev, reg, obj); break;
	case 3: FUNC4(dev, reg, obj); break;
	case 2: FUNC2(dev, reg, obj); break;
	default: FUNC0();
	}

	/* And similarly be paranoid that no direct access to this region
	 * is reordered to before the fence is installed.
	 */
	if (FUNC3(obj))
		FUNC6();
}