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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PP_OFF_DELAYS ; 
 int /*<<< orphan*/  PP_ON_DELAYS ; 

void FUNC3(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	 /* Set the Panel Power On/Off timings if uninitialized. */
	if (!FUNC0(dev) &&
	    FUNC1(PP_ON_DELAYS) == 0 && FUNC1(PP_OFF_DELAYS) == 0) {
		/* Set T2 to 40ms and T5 to 200ms */
		FUNC2(PP_ON_DELAYS, 0x019007d0);

		/* Set T3 to 35ms and Tx to 200ms */
		FUNC2(PP_OFF_DELAYS, 0x015e07d0);
	}
}