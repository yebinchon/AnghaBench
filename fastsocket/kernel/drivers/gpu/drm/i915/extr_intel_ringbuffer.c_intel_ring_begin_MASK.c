#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct intel_ring_buffer {TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  interruptible; } ;
struct TYPE_6__ {TYPE_2__ mm; int /*<<< orphan*/  gpu_error; } ;
typedef  TYPE_3__ drm_i915_private_t ;
struct TYPE_4__ {TYPE_3__* dev_private; } ;

/* Variables and functions */
 int FUNC0 (struct intel_ring_buffer*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_ring_buffer*) ; 

int FUNC3(struct intel_ring_buffer *ring,
		     int num_dwords)
{
	drm_i915_private_t *dev_priv = ring->dev->dev_private;
	int ret;

	ret = FUNC1(&dev_priv->gpu_error,
				   dev_priv->mm.interruptible);
	if (ret)
		return ret;

	/* Preallocate the olr before touching the ring */
	ret = FUNC2(ring);
	if (ret)
		return ret;

	return FUNC0(ring, num_dwords * sizeof(uint32_t));
}