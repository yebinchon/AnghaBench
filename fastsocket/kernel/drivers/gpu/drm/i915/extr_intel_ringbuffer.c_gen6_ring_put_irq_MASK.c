#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_ring_buffer {scalar_t__ irq_refcount; scalar_t__ id; int /*<<< orphan*/  irq_enable_mask; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  gt_irq_mask; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_RENDER_L3_PARITY_ERROR ; 
 int /*<<< orphan*/  GTIMR ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ RCS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct intel_ring_buffer *ring)
{
	struct drm_device *dev = ring->dev;
	drm_i915_private_t *dev_priv = dev->dev_private;
	unsigned long flags;

	FUNC5(&dev_priv->irq_lock, flags);
	if (--ring->irq_refcount == 0) {
		if (FUNC0(dev) && ring->id == RCS)
			FUNC2(ring, ~GEN6_RENDER_L3_PARITY_ERROR);
		else
			FUNC2(ring, ~0);
		dev_priv->gt_irq_mask |= ring->irq_enable_mask;
		FUNC1(GTIMR, dev_priv->gt_irq_mask);
		FUNC3(GTIMR);
	}
	FUNC6(&dev_priv->irq_lock, flags);

	FUNC4(dev_priv);
}