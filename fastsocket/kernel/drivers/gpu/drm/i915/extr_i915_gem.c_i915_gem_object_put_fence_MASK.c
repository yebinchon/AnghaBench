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
struct drm_i915_private {int /*<<< orphan*/ * fence_regs; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_i915_gem_object {size_t fence_reg; TYPE_2__ base; } ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 size_t I915_FENCE_REG_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 

int
FUNC3(struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *dev_priv = obj->base.dev->dev_private;
	int ret;

	ret = FUNC2(obj);
	if (ret)
		return ret;

	if (obj->fence_reg == I915_FENCE_REG_NONE)
		return 0;

	FUNC1(obj,
				     &dev_priv->fence_regs[obj->fence_reg],
				     false);
	FUNC0(obj);

	return 0;
}