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
typedef  int /*<<< orphan*/  u32 ;
struct intel_crt {int force_hotplug_required; int /*<<< orphan*/  adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADPA_CRT_HOTPLUG_MASK ; 
 int /*<<< orphan*/  ADPA_HOTPLUG_BITS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_crt* FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC6(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crt *crt = FUNC5(connector);

	if (FUNC1(dev)) {
		u32 adpa;

		adpa = FUNC2(crt->adpa_reg);
		adpa &= ~ADPA_CRT_HOTPLUG_MASK;
		adpa |= ADPA_HOTPLUG_BITS;
		FUNC3(crt->adpa_reg, adpa);
		FUNC4(crt->adpa_reg);

		FUNC0("pch crt adpa set to 0x%x\n", adpa);
		crt->force_hotplug_required = 1;
	}

}