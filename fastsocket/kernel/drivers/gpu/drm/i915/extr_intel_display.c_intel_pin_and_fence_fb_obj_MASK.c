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
typedef  int u32 ;
struct intel_ring_buffer {int dummy; } ;
struct TYPE_3__ {int interruptible; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_i915_gem_object {int tiling_mode; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
#define  I915_TILING_NONE 130 
#define  I915_TILING_X 129 
#define  I915_TILING_Y 128 
 TYPE_2__* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int FUNC7 (struct drm_i915_gem_object*,int,struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 

int
FUNC9(struct drm_device *dev,
			   struct drm_i915_gem_object *obj,
			   struct intel_ring_buffer *pipelined)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 alignment;
	int ret;

	switch (obj->tiling_mode) {
	case I915_TILING_NONE:
		if (FUNC3(dev) || FUNC4(dev))
			alignment = 128 * 1024;
		else if (FUNC2(dev)->gen >= 4)
			alignment = 4 * 1024;
		else
			alignment = 64 * 1024;
		break;
	case I915_TILING_X:
		/* pin() will align the object as required by fence */
		alignment = 0;
		break;
	case I915_TILING_Y:
		/* FIXME: Is this true? */
		FUNC1("Y tiled not allowed for scan out buffers\n");
		return -EINVAL;
	default:
		FUNC0();
	}

	dev_priv->mm.interruptible = false;
	ret = FUNC7(obj, alignment, pipelined);
	if (ret)
		goto err_interruptible;

	/* Install a fence for tiled scan-out. Pre-i965 always needs a
	 * fence, whereas 965+ only requires a fence if using
	 * framebuffer compression.  For simplicity, we always install
	 * a fence as the cost is not that onerous.
	 */
	ret = FUNC5(obj);
	if (ret)
		goto err_unpin;

	FUNC6(obj);

	dev_priv->mm.interruptible = true;
	return 0;

err_unpin:
	FUNC8(obj);
err_interruptible:
	dev_priv->mm.interruptible = true;
	return ret;
}