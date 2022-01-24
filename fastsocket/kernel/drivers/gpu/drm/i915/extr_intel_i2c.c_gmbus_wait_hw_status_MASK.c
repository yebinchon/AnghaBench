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
typedef  int u32 ;
struct drm_i915_private {int gpio_mmio_base; int /*<<< orphan*/  gmbus_wait_queue; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 scalar_t__ GMBUS2 ; 
 scalar_t__ GMBUS4 ; 
 int GMBUS_SATOER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC8(struct drm_i915_private *dev_priv,
		     u32 gmbus2_status,
		     u32 gmbus4_irq_en)
{
	int i;
	int reg_offset = dev_priv->gpio_mmio_base;
	u32 gmbus2 = 0;
	FUNC0(wait);

	if (!FUNC1(dev_priv->dev))
		gmbus4_irq_en = 0;

	/* Important: The hw handles only the first bit, so set only one! Since
	 * we also need to check for NAKs besides the hw ready/idle signal, we
	 * need to wake up periodically and check that ourselves. */
	FUNC3(GMBUS4 + reg_offset, gmbus4_irq_en);

	for (i = 0; i < FUNC5(50) + 1; i++) {
		FUNC6(&dev_priv->gmbus_wait_queue, &wait,
				TASK_UNINTERRUPTIBLE);

		gmbus2 = FUNC2(GMBUS2 + reg_offset);
		if (gmbus2 & (GMBUS_SATOER | gmbus2_status))
			break;

		FUNC7(1);
	}
	FUNC4(&dev_priv->gmbus_wait_queue, &wait);

	FUNC3(GMBUS4 + reg_offset, 0);

	if (gmbus2 & GMBUS_SATOER)
		return -ENXIO;
	if (gmbus2 & gmbus2_status)
		return 0;
	return -ETIMEDOUT;
}