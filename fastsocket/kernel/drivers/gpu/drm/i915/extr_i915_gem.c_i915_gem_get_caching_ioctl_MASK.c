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
struct drm_i915_gem_object {scalar_t__ cache_level; int /*<<< orphan*/  base; } ;
struct drm_i915_gem_caching {int caching; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ I915_CACHE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct drm_device *dev, void *data,
			       struct drm_file *file)
{
	struct drm_i915_gem_caching *args = data;
	struct drm_i915_gem_object *obj;
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	obj = FUNC4(FUNC0(dev, file, args->handle));
	if (&obj->base == NULL) {
		ret = -ENOENT;
		goto unlock;
	}

	args->caching = obj->cache_level != I915_CACHE_NONE;

	FUNC1(&obj->base);
unlock:
	FUNC3(&dev->struct_mutex);
	return ret;
}