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
typedef  int uint32_t ;
struct drm_i915_gem_set_domain {int read_domains; int write_domain; int /*<<< orphan*/  handle; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int I915_GEM_DOMAIN_GTT ; 
 int I915_GEM_GPU_DOMAINS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_i915_gem_object*,int) ; 
 int FUNC3 (struct drm_i915_gem_object*,int) ; 
 int FUNC4 (struct drm_i915_gem_object*,int) ; 
 int FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct drm_device *dev, void *data,
			  struct drm_file *file)
{
	struct drm_i915_gem_set_domain *args = data;
	struct drm_i915_gem_object *obj;
	uint32_t read_domains = args->read_domains;
	uint32_t write_domain = args->write_domain;
	int ret;

	/* Only handle setting domains to types used by the CPU. */
	if (write_domain & I915_GEM_GPU_DOMAINS)
		return -EINVAL;

	if (read_domains & I915_GEM_GPU_DOMAINS)
		return -EINVAL;

	/* Having something in the write domain implies it's in the read
	 * domain, and only that read domain.  Enforce that in the request.
	 */
	if (write_domain != 0 && read_domains != write_domain)
		return -EINVAL;

	ret = FUNC5(dev);
	if (ret)
		return ret;

	obj = FUNC7(FUNC0(dev, file, args->handle));
	if (&obj->base == NULL) {
		ret = -ENOENT;
		goto unlock;
	}

	/* Try to flush the object off the GPU without holding the lock.
	 * We will repeat the flush holding the lock in the normal manner
	 * to catch cases where we are gazumped.
	 */
	ret = FUNC4(obj, !write_domain);
	if (ret)
		goto unref;

	if (read_domains & I915_GEM_DOMAIN_GTT) {
		ret = FUNC3(obj, write_domain != 0);

		/* Silently promote "you're not bound, there was nothing to do"
		 * to success, since the client was just asking us to
		 * make sure everything was done.
		 */
		if (ret == -EINVAL)
			ret = 0;
	} else {
		ret = FUNC2(obj, write_domain != 0);
	}

unref:
	FUNC1(&obj->base);
unlock:
	FUNC6(&dev->struct_mutex);
	return ret;
}