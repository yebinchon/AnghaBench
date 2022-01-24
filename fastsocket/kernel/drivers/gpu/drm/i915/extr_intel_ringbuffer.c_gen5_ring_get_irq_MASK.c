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
struct intel_ring_buffer {int /*<<< orphan*/  irq_enable_mask; int /*<<< orphan*/  irq_refcount; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  irq_enabled; TYPE_1__* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  gt_irq_mask; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  GTIMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool
FUNC4(struct intel_ring_buffer *ring)
{
	struct drm_device *dev = ring->dev;
	drm_i915_private_t *dev_priv = dev->dev_private;
	unsigned long flags;

	if (!dev->irq_enabled)
		return false;

	FUNC2(&dev_priv->irq_lock, flags);
	if (ring->irq_refcount++ == 0) {
		dev_priv->gt_irq_mask &= ~ring->irq_enable_mask;
		FUNC0(GTIMR, dev_priv->gt_irq_mask);
		FUNC1(GTIMR);
	}
	FUNC3(&dev_priv->irq_lock, flags);

	return true;
}