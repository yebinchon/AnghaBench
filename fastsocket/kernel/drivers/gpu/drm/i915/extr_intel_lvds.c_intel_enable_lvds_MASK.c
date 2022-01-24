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
struct intel_lvds_encoder {int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int LVDS_PORT_EN ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  PCH_PP_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int POWER_TARGET_ON ; 
 int /*<<< orphan*/  PP_CONTROL ; 
 int PP_ON ; 
 int /*<<< orphan*/  PP_STATUS ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_lvds_encoder* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(struct intel_encoder *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct intel_lvds_encoder *lvds_encoder = FUNC7(&encoder->base);
	struct intel_crtc *intel_crtc = FUNC6(encoder->base.crtc);
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 ctl_reg, stat_reg;

	if (FUNC1(dev)) {
		ctl_reg = PCH_PP_CONTROL;
		stat_reg = PCH_PP_STATUS;
	} else {
		ctl_reg = PP_CONTROL;
		stat_reg = PP_STATUS;
	}

	FUNC3(lvds_encoder->reg, FUNC2(lvds_encoder->reg) | LVDS_PORT_EN);

	FUNC3(ctl_reg, FUNC2(ctl_reg) | POWER_TARGET_ON);
	FUNC4(lvds_encoder->reg);
	if (FUNC8((FUNC2(stat_reg) & PP_ON) != 0, 1000))
		FUNC0("timed out waiting for panel to power on\n");

	FUNC5(dev, intel_crtc->pipe);
}