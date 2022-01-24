#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i915_hw_context {int dummy; } ;
struct drm_i915_gem_context_destroy {int /*<<< orphan*/  ctx_id; } ;
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;

/* Variables and functions */
 int DRIVER_GEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct i915_hw_context*) ; 
 struct i915_hw_context* FUNC2 (struct drm_i915_file_private*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_device *dev, void *data,
				   struct drm_file *file)
{
	struct drm_i915_gem_context_destroy *args = data;
	struct drm_i915_file_private *file_priv = file->driver_priv;
	struct i915_hw_context *ctx;
	int ret;

	if (!(dev->driver->driver_features & DRIVER_GEM))
		return -ENODEV;

	ret = FUNC3(dev);
	if (ret)
		return ret;

	ctx = FUNC2(file_priv, args->ctx_id);
	if (!ctx) {
		FUNC4(&dev->struct_mutex);
		return -ENOENT;
	}

	FUNC1(ctx);

	FUNC4(&dev->struct_mutex);

	FUNC0("HW context %d destroyed\n", args->ctx_id);
	return 0;
}