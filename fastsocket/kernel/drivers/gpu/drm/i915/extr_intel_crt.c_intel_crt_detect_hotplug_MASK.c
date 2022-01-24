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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int CRT_HOTPLUG_FORCE_DETECT ; 
 int CRT_HOTPLUG_INT_STATUS ; 
 int CRT_HOTPLUG_MONITOR_MASK ; 
 int CRT_HOTPLUG_MONITOR_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  PORT_HOTPLUG_EN ; 
 int /*<<< orphan*/  PORT_HOTPLUG_STAT ; 
 int FUNC7 (struct drm_connector*) ; 
 int FUNC8 (struct drm_connector*) ; 
 scalar_t__ FUNC9 (int,int) ; 

__attribute__((used)) static bool FUNC10(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 hotplug_en, orig, stat;
	bool ret = false;
	int i, tries = 0;

	if (FUNC1(dev))
		return FUNC7(connector);

	if (FUNC6(dev))
		return FUNC8(connector);

	/*
	 * On 4 series desktop, CRT detect sequence need to be done twice
	 * to get a reliable result.
	 */

	if (FUNC4(dev) && !FUNC5(dev))
		tries = 2;
	else
		tries = 1;
	hotplug_en = orig = FUNC2(PORT_HOTPLUG_EN);
	hotplug_en |= CRT_HOTPLUG_FORCE_DETECT;

	for (i = 0; i < tries ; i++) {
		/* turn on the FORCE_DETECT */
		FUNC3(PORT_HOTPLUG_EN, hotplug_en);
		/* wait for FORCE_DETECT to go off */
		if (FUNC9((FUNC2(PORT_HOTPLUG_EN) &
			      CRT_HOTPLUG_FORCE_DETECT) == 0,
			     1000))
			FUNC0("timed out waiting for FORCE_DETECT to go off");
	}

	stat = FUNC2(PORT_HOTPLUG_STAT);
	if ((stat & CRT_HOTPLUG_MONITOR_MASK) != CRT_HOTPLUG_MONITOR_NONE)
		ret = true;

	/* clear the interrupt we just generated, if any */
	FUNC3(PORT_HOTPLUG_STAT, CRT_HOTPLUG_INT_STATUS);

	/* and put the bits back */
	FUNC3(PORT_HOTPLUG_EN, orig);

	return ret;
}