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
struct intel_crt {int /*<<< orphan*/  adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int ADPA_CRT_HOTPLUG_FORCE_TRIGGER ; 
 int ADPA_CRT_HOTPLUG_MONITOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct intel_crt* FUNC3 (struct drm_connector*) ; 
 scalar_t__ FUNC4 (int,int) ; 

__attribute__((used)) static bool FUNC5(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct intel_crt *crt = FUNC3(connector);
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 adpa;
	bool ret;
	u32 save_adpa;

	save_adpa = adpa = FUNC1(crt->adpa_reg);
	FUNC0("trigger hotplug detect cycle: adpa=0x%x\n", adpa);

	adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;

	FUNC2(crt->adpa_reg, adpa);

	if (FUNC4((FUNC1(crt->adpa_reg) & ADPA_CRT_HOTPLUG_FORCE_TRIGGER) == 0,
		     1000)) {
		FUNC0("timed out waiting for FORCE_TRIGGER");
		FUNC2(crt->adpa_reg, save_adpa);
	}

	/* Check the status to see if both blue and green are on now */
	adpa = FUNC1(crt->adpa_reg);
	if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
		ret = true;
	else
		ret = false;

	FUNC0("valleyview hotplug adpa=0x%x, result %d\n", adpa, ret);

	/* FIXME: debug force function and remove */
	ret = true;

	return ret;
}