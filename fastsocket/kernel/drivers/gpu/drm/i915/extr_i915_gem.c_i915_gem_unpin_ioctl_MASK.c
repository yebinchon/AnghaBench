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
struct drm_i915_gem_pin {int /*<<< orphan*/  handle; } ;
struct drm_i915_gem_object {scalar_t__ user_pin_count; int /*<<< orphan*/  base; struct drm_file* pin_filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct drm_device *dev, void *data,
		     struct drm_file *file)
{
	struct drm_i915_gem_pin *args = data;
	struct drm_i915_gem_object *obj;
	int ret;

	ret = FUNC4(dev);
	if (ret)
		return ret;

	obj = FUNC6(FUNC1(dev, file, args->handle));
	if (&obj->base == NULL) {
		ret = -ENOENT;
		goto unlock;
	}

	if (obj->pin_filp != file) {
		FUNC0("Not pinned by caller in i915_gem_pin_ioctl(): %d\n",
			  args->handle);
		ret = -EINVAL;
		goto out;
	}
	obj->user_pin_count--;
	if (obj->user_pin_count == 0) {
		obj->pin_filp = NULL;
		FUNC3(obj);
	}

out:
	FUNC2(&obj->base);
unlock:
	FUNC5(&dev->struct_mutex);
	return ret;
}