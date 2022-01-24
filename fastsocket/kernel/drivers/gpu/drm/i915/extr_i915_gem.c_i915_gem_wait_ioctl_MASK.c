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
typedef  scalar_t__ u32 ;
struct timespec {int dummy; } ;
struct intel_ring_buffer {int dummy; } ;
struct drm_i915_gem_wait {scalar_t__ timeout_ns; int /*<<< orphan*/  bo_handle; } ;
struct drm_i915_gem_object {scalar_t__ last_read_seqno; int /*<<< orphan*/  base; struct intel_ring_buffer* ring; scalar_t__ active; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_2__* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  reset_counter; } ;
struct TYPE_4__ {TYPE_1__ gpu_error; } ;
typedef  TYPE_2__ drm_i915_private_t ;

/* Variables and functions */
 int ENOENT ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct intel_ring_buffer*,scalar_t__,unsigned int,int,struct timespec*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_i915_gem_object*) ; 
 int FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct timespec FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*) ; 
 struct drm_i915_gem_object* FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12(struct drm_device *dev, void *data, struct drm_file *file)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	struct drm_i915_gem_wait *args = data;
	struct drm_i915_gem_object *obj;
	struct intel_ring_buffer *ring = NULL;
	struct timespec timeout_stack, *timeout = NULL;
	unsigned reset_counter;
	u32 seqno = 0;
	int ret = 0;

	if (args->timeout_ns >= 0) {
		timeout_stack = FUNC8(args->timeout_ns);
		timeout = &timeout_stack;
	}

	ret = FUNC6(dev);
	if (ret)
		return ret;

	obj = FUNC11(FUNC3(dev, file, args->bo_handle));
	if (&obj->base == NULL) {
		FUNC7(&dev->struct_mutex);
		return -ENOENT;
	}

	/* Need to make sure the object gets inactive eventually. */
	ret = FUNC5(obj);
	if (ret)
		goto out;

	if (obj->active) {
		seqno = obj->last_read_seqno;
		ring = obj->ring;
	}

	if (seqno == 0)
		 goto out;

	/* Do this after OLR check to make sure we make forward progress polling
	 * on this IOCTL with a 0 timeout (like busy ioctl)
	 */
	if (!args->timeout_ns) {
		ret = -ETIME;
		goto out;
	}

	FUNC4(&obj->base);
	reset_counter = FUNC2(&dev_priv->gpu_error.reset_counter);
	FUNC7(&dev->struct_mutex);

	ret = FUNC1(ring, seqno, reset_counter, true, timeout);
	if (timeout) {
		FUNC0(!FUNC10(timeout));
		args->timeout_ns = FUNC9(timeout);
	}
	return ret;

out:
	FUNC4(&obj->base);
	FUNC7(&dev->struct_mutex);
	return ret;
}