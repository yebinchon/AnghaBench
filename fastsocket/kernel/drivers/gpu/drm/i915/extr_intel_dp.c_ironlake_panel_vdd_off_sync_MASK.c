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
typedef  int /*<<< orphan*/  u32 ;
struct intel_dp {int /*<<< orphan*/  panel_power_down_delay; int /*<<< orphan*/  want_panel_vdd; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_1__ mode_config; struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDP_FORCE_VDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  PCH_PP_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct drm_device* FUNC5 (struct intel_dp*) ; 
 scalar_t__ FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC5(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 pp;

	FUNC4(!FUNC9(&dev->mode_config.mutex));

	if (!intel_dp->want_panel_vdd && FUNC6(intel_dp)) {
		pp = FUNC7(dev_priv);
		pp &= ~EDP_FORCE_VDD;
		FUNC2(PCH_PP_CONTROL, pp);
		FUNC3(PCH_PP_CONTROL);

		/* Make sure sequencer is idle before allowing subsequent activity */
		FUNC0("PCH_PP_STATUS: 0x%08x PCH_PP_CONTROL: 0x%08x\n",
			      FUNC1(PCH_PP_STATUS), FUNC1(PCH_PP_CONTROL));

		FUNC8(intel_dp->panel_power_down_delay);
	}
}