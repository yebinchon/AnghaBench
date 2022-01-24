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
struct drm_i915_gem_object {int active; int /*<<< orphan*/  base; scalar_t__ ring; } ;
struct drm_i915_gem_busy {int busy; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int I915_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_device*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct drm_device *dev, void *data,
		    struct drm_file *file)
{
	struct drm_i915_gem_busy *args = data;
	struct drm_i915_gem_object *obj;
	int ret;

	ret = FUNC4(dev);
	if (ret)
		return ret;

	obj = FUNC7(FUNC1(dev, file, args->handle));
	if (&obj->base == NULL) {
		ret = -ENOENT;
		goto unlock;
	}

	/* Count all active objects as busy, even if they are currently not used
	 * by the gpu. Users of this interface expect objects to eventually
	 * become non-busy without any further actions, therefore emit any
	 * necessary flushes here.
	 */
	ret = FUNC3(obj);

	args->busy = obj->active;
	if (obj->ring) {
		FUNC0(I915_NUM_RINGS > 16);
		args->busy |= FUNC5(obj->ring) << 16;
	}

	FUNC2(&obj->base);
unlock:
	FUNC6(&dev->struct_mutex);
	return ret;
}