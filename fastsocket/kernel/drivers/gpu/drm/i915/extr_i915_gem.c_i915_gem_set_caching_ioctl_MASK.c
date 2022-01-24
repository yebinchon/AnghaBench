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
struct drm_i915_gem_object {int /*<<< orphan*/  base; } ;
struct drm_i915_gem_caching {int caching; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
typedef  enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int I915_CACHE_LLC ; 
 int I915_CACHE_NONE ; 
#define  I915_CACHING_CACHED 129 
#define  I915_CACHING_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_i915_gem_object*,int) ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct drm_device *dev, void *data,
			       struct drm_file *file)
{
	struct drm_i915_gem_caching *args = data;
	struct drm_i915_gem_object *obj;
	enum i915_cache_level level;
	int ret;

	switch (args->caching) {
	case I915_CACHING_NONE:
		level = I915_CACHE_NONE;
		break;
	case I915_CACHING_CACHED:
		level = I915_CACHE_LLC;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC3(dev);
	if (ret)
		return ret;

	obj = FUNC5(FUNC0(dev, file, args->handle));
	if (&obj->base == NULL) {
		ret = -ENOENT;
		goto unlock;
	}

	ret = FUNC2(obj, level);

	FUNC1(&obj->base);
unlock:
	FUNC4(&dev->struct_mutex);
	return ret;
}