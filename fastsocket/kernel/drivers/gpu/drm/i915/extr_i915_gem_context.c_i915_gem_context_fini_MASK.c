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
struct drm_i915_private {TYPE_1__* ring; scalar_t__ hw_contexts_disabled; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  obj; } ;
struct TYPE_3__ {TYPE_2__* default_context; } ;

/* Variables and functions */
 size_t RCS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

void FUNC3(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (dev_priv->hw_contexts_disabled)
		return;

	/* The only known way to stop the gpu from accessing the hw context is
	 * to reset it. Do this as the very last operation to avoid confusing
	 * other code, leading to spurious errors. */
	FUNC2(dev);

	FUNC1(dev_priv->ring[RCS].default_context->obj);

	FUNC0(dev_priv->ring[RCS].default_context);
}