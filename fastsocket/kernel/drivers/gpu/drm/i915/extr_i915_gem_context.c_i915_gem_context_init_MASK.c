#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_i915_private {int hw_contexts_disabled; int hw_context_size; TYPE_1__* ring; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ default_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 size_t RCS ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (!FUNC1(dev)) {
		dev_priv->hw_contexts_disabled = true;
		return;
	}

	/* If called from reset, or thaw... we've been here already */
	if (dev_priv->hw_contexts_disabled ||
	    dev_priv->ring[RCS].default_context)
		return;

	dev_priv->hw_context_size = FUNC4(FUNC3(dev), 4096);

	if (dev_priv->hw_context_size > (1<<20)) {
		dev_priv->hw_contexts_disabled = true;
		return;
	}

	if (FUNC2(dev_priv)) {
		dev_priv->hw_contexts_disabled = true;
		return;
	}

	FUNC0("HW context support initialized\n");
}