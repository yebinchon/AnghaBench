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
struct drm_i915_gem_pin {int /*<<< orphan*/  offset; int /*<<< orphan*/  alignment; int /*<<< orphan*/  handle; } ;
struct drm_i915_gem_object {scalar_t__ madv; scalar_t__ user_pin_count; int /*<<< orphan*/  base; int /*<<< orphan*/  gtt_offset; struct drm_file* pin_filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ I915_MADV_WILLNEED ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct drm_device *dev, void *data,
		   struct drm_file *file)
{
	struct drm_i915_gem_pin *args = data;
	struct drm_i915_gem_object *obj;
	int ret;

	ret = FUNC5(dev);
	if (ret)
		return ret;

	obj = FUNC7(FUNC1(dev, file, args->handle));
	if (&obj->base == NULL) {
		ret = -ENOENT;
		goto unlock;
	}

	if (obj->madv != I915_MADV_WILLNEED) {
		FUNC0("Attempting to pin a purgeable buffer\n");
		ret = -EINVAL;
		goto out;
	}

	if (obj->pin_filp != NULL && obj->pin_filp != file) {
		FUNC0("Already pinned in i915_gem_pin_ioctl(): %d\n",
			  args->handle);
		ret = -EINVAL;
		goto out;
	}

	if (obj->user_pin_count == 0) {
		ret = FUNC4(obj, args->alignment, true, false);
		if (ret)
			goto out;
	}

	obj->user_pin_count++;
	obj->pin_filp = file;

	/* XXX - flush the CPU caches for pinned objects
	 * as the X server doesn't manage domains yet
	 */
	FUNC3(obj);
	args->offset = obj->gtt_offset;
out:
	FUNC2(&obj->base);
unlock:
	FUNC6(&dev->struct_mutex);
	return ret;
}