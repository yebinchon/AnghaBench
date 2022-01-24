#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_ring_buffer {int space; int /*<<< orphan*/  head; struct drm_device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  interruptible; } ;
struct drm_i915_private {TYPE_4__ mm; int /*<<< orphan*/  gpu_error; } ;
struct drm_i915_master_private {TYPE_3__* sarea_priv; } ;
struct drm_device {TYPE_2__* primary; struct drm_i915_private* dev_private; } ;
struct TYPE_7__ {int /*<<< orphan*/  perf_boxes; } ;
struct TYPE_6__ {TYPE_1__* master; } ;
struct TYPE_5__ {struct drm_i915_master_private* driver_priv; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOSPC ; 
 int HZ ; 
 int /*<<< orphan*/  I915_BOX_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct intel_ring_buffer*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_ring_buffer*,int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ring_buffer*) ; 

__attribute__((used)) static int FUNC8(struct intel_ring_buffer *ring, int n)
{
	struct drm_device *dev = ring->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	unsigned long end;
	int ret;

	ret = FUNC2(ring, n);
	if (ret != -ENOSPC)
		return ret;

	FUNC6(ring);
	/* With GEM the hangcheck timer should kick us out of the loop,
	 * leaving it early runs the risk of corrupting GEM state (due
	 * to running on almost untested codepaths). But on resume
	 * timers don't work yet, so prevent a complete hang in that
	 * case by choosing an insanely large timeout. */
	end = jiffies + 60 * HZ;

	do {
		ring->head = FUNC0(ring);
		ring->space = FUNC4(ring);
		if (ring->space >= n) {
			FUNC7(ring);
			return 0;
		}

		if (dev->primary->master) {
			struct drm_i915_master_private *master_priv = dev->primary->master->driver_priv;
			if (master_priv->sarea_priv)
				master_priv->sarea_priv->perf_boxes |= I915_BOX_WAIT;
		}

		FUNC3(1);

		ret = FUNC1(&dev_priv->gpu_error,
					   dev_priv->mm.interruptible);
		if (ret)
			return ret;
	} while (!FUNC5(jiffies, end));
	FUNC7(ring);
	return -EBUSY;
}