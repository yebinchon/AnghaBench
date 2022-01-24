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
struct intel_ring_buffer {int /*<<< orphan*/  (* cleanup ) (struct intel_ring_buffer*) ;TYPE_2__* obj; int /*<<< orphan*/  virtual_start; int /*<<< orphan*/  name; TYPE_1__* dev; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ring_buffer*) ; 

void FUNC8(struct intel_ring_buffer *ring)
{
	struct drm_i915_private *dev_priv;
	int ret;

	if (ring->obj == NULL)
		return;

	/* Disable the ring buffer. The ring must be idle at this point */
	dev_priv = ring->dev->dev_private;
	ret = FUNC5(ring);
	if (ret)
		FUNC0("failed to quiesce %s whilst cleaning up: %d\n",
			  ring->name, ret);

	FUNC1(ring, 0);

	FUNC6(ring->virtual_start);

	FUNC4(ring->obj);
	FUNC3(&ring->obj->base);
	ring->obj = NULL;

	if (ring->cleanup)
		ring->cleanup(ring);

	FUNC2(ring);
}