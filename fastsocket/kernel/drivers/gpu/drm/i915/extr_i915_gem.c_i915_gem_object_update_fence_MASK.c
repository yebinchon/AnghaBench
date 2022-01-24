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
struct TYPE_3__ {int /*<<< orphan*/  fence_list; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct drm_i915_gem_object {int fence_reg; TYPE_2__ base; } ;
struct drm_i915_fence_reg {int /*<<< orphan*/  lru_list; struct drm_i915_gem_object* obj; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int I915_FENCE_REG_NONE ; 
 int FUNC1 (struct drm_i915_private*,struct drm_i915_fence_reg*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  i915_gem_write_fence__ipi ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_gem_object *obj,
					 struct drm_i915_fence_reg *fence,
					 bool enable)
{
	struct drm_device *dev = obj->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int fence_reg = FUNC1(dev_priv, fence);

	/* In order to fully serialize access to the fenced region and
	 * the update to the fence register we need to take extreme
	 * measures on SNB+. In theory, the write to the fence register
	 * flushes all memory transactions before, and coupled with the
	 * mb() placed around the register write we serialise all memory
	 * operations with respect to the changes in the tiler. Yet, on
	 * SNB+ we need to take a step further and emit an explicit wbinvd()
	 * on each processor in order to manually flush all memory
	 * transactions before updating the fence register.
	 */
	if (FUNC0(obj->base.dev))
		FUNC5(i915_gem_write_fence__ipi, NULL, 1);
	FUNC2(dev, fence_reg, enable ? obj : NULL);

	if (enable) {
		obj->fence_reg = fence_reg;
		fence->obj = obj;
		FUNC4(&fence->lru_list, &dev_priv->mm.fence_list);
	} else {
		obj->fence_reg = I915_FENCE_REG_NONE;
		fence->obj = NULL;
		FUNC3(&fence->lru_list);
	}
}