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
struct drm_i915_gem_object {int madv; int /*<<< orphan*/  base; int /*<<< orphan*/ * pages; scalar_t__ pin_count; } ;
struct drm_i915_gem_madvise {int madv; int retained; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
#define  I915_MADV_DONTNEED 129 
#define  I915_MADV_WILLNEED 128 
 int __I915_MADV_PURGED ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct drm_device *dev, void *data,
		       struct drm_file *file_priv)
{
	struct drm_i915_gem_madvise *args = data;
	struct drm_i915_gem_object *obj;
	int ret;

	switch (args->madv) {
	case I915_MADV_DONTNEED:
	case I915_MADV_WILLNEED:
	    break;
	default:
	    return -EINVAL;
	}

	ret = FUNC4(dev);
	if (ret)
		return ret;

	obj = FUNC6(FUNC0(dev, file_priv, args->handle));
	if (&obj->base == NULL) {
		ret = -ENOENT;
		goto unlock;
	}

	if (obj->pin_count) {
		ret = -EINVAL;
		goto out;
	}

	if (obj->madv != __I915_MADV_PURGED)
		obj->madv = args->madv;

	/* if the object is no longer attached, discard its backing storage */
	if (FUNC2(obj) && obj->pages == NULL)
		FUNC3(obj);

	args->retained = obj->madv != __I915_MADV_PURGED;

out:
	FUNC1(&obj->base);
unlock:
	FUNC5(&dev->struct_mutex);
	return ret;
}