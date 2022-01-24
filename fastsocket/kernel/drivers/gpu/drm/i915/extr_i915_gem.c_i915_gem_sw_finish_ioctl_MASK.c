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
struct drm_i915_gem_sw_finish {int /*<<< orphan*/  handle; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; scalar_t__ pin_count; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct drm_device *dev, void *data,
			 struct drm_file *file)
{
	struct drm_i915_gem_sw_finish *args = data;
	struct drm_i915_gem_object *obj;
	int ret = 0;

	ret = FUNC3(dev);
	if (ret)
		return ret;

	obj = FUNC5(FUNC0(dev, file, args->handle));
	if (&obj->base == NULL) {
		ret = -ENOENT;
		goto unlock;
	}

	/* Pinned buffers may be scanout, so flush the cache */
	if (obj->pin_count)
		FUNC2(obj);

	FUNC1(&obj->base);
unlock:
	FUNC4(&dev->struct_mutex);
	return ret;
}