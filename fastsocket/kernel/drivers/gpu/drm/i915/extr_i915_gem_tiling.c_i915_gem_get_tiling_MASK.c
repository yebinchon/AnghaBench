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
struct drm_i915_gem_object {int tiling_mode; int /*<<< orphan*/  base; } ;
struct drm_i915_gem_get_tiling {int tiling_mode; scalar_t__ swizzle_mode; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_2__* dev_private; } ;
struct TYPE_3__ {scalar_t__ bit_6_swizzle_x; scalar_t__ bit_6_swizzle_y; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;
typedef  TYPE_2__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOENT ; 
 scalar_t__ I915_BIT_6_SWIZZLE_9 ; 
 scalar_t__ I915_BIT_6_SWIZZLE_9_10 ; 
 scalar_t__ I915_BIT_6_SWIZZLE_9_10_17 ; 
 scalar_t__ I915_BIT_6_SWIZZLE_9_17 ; 
 scalar_t__ I915_BIT_6_SWIZZLE_NONE ; 
#define  I915_TILING_NONE 130 
#define  I915_TILING_X 129 
#define  I915_TILING_Y 128 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct drm_device *dev, void *data,
		   struct drm_file *file)
{
	struct drm_i915_gem_get_tiling *args = data;
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct drm_i915_gem_object *obj;

	obj = FUNC5(FUNC1(dev, file, args->handle));
	if (&obj->base == NULL)
		return -ENOENT;

	FUNC3(&dev->struct_mutex);

	args->tiling_mode = obj->tiling_mode;
	switch (obj->tiling_mode) {
	case I915_TILING_X:
		args->swizzle_mode = dev_priv->mm.bit_6_swizzle_x;
		break;
	case I915_TILING_Y:
		args->swizzle_mode = dev_priv->mm.bit_6_swizzle_y;
		break;
	case I915_TILING_NONE:
		args->swizzle_mode = I915_BIT_6_SWIZZLE_NONE;
		break;
	default:
		FUNC0("unknown tiling mode\n");
	}

	/* Hide bit 17 from the user -- see comment in i915_gem_set_tiling */
	if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_17)
		args->swizzle_mode = I915_BIT_6_SWIZZLE_9;
	if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_10_17)
		args->swizzle_mode = I915_BIT_6_SWIZZLE_9_10;

	FUNC2(&obj->base);
	FUNC4(&dev->struct_mutex);

	return 0;
}