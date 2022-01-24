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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ max_delay; scalar_t__ min_delay; scalar_t__ cur_delay; int /*<<< orphan*/  hw_lock; } ;
struct drm_i915_private {TYPE_1__ rps; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int GEN6_AGGRESSIVE_TURBO ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEN6_RPNSWREQ ; 
 int /*<<< orphan*/  GEN6_RP_INTERRUPT_LIMITS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct drm_i915_private*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8(struct drm_device *dev, u8 val)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 limits = FUNC5(dev_priv, &val);

	FUNC4(!FUNC6(&dev_priv->rps.hw_lock));
	FUNC4(val > dev_priv->rps.max_delay);
	FUNC4(val < dev_priv->rps.min_delay);

	if (val == dev_priv->rps.cur_delay)
		return;

	FUNC2(GEN6_RPNSWREQ,
		   FUNC0(val) |
		   FUNC1(0) |
		   GEN6_AGGRESSIVE_TURBO);

	/* Make sure we continue to get interrupts
	 * until we hit the minimum or maximum frequencies.
	 */
	FUNC2(GEN6_RP_INTERRUPT_LIMITS, limits);

	FUNC3(GEN6_RPNSWREQ);

	dev_priv->rps.cur_delay = val;

	FUNC7(val * 50);
}