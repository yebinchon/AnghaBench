#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct intel_dp {int /*<<< orphan*/  backlight_on_delay; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_2__ base; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EDP_BLC_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_PP_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct intel_dp *intel_dp)
{
	struct intel_digital_port *intel_dig_port = FUNC3(intel_dp);
	struct drm_device *dev = intel_dig_port->base.base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int pipe = FUNC8(intel_dig_port->base.base.crtc)->pipe;
	u32 pp;

	if (!FUNC6(intel_dp))
		return;

	FUNC0("\n");
	/*
	 * If we enable the backlight right away following a panel power
	 * on, we may see slight flicker as the panel syncs with the eDP
	 * link.  So delay a bit to make sure the image is solid before
	 * allowing it to appear.
	 */
	FUNC7(intel_dp->backlight_on_delay);
	pp = FUNC5(dev_priv);
	pp |= EDP_BLC_ENABLE;
	FUNC1(PCH_PP_CONTROL, pp);
	FUNC2(PCH_PP_CONTROL);

	FUNC4(dev, pipe);
}