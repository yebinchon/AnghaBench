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
typedef  int u32 ;
struct intel_dp {int DP; } ;
struct TYPE_4__ {struct drm_crtc* crtc; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_A ; 
 int DP_AUDIO_OUTPUT_ENABLE ; 
 int DP_PLL_ENABLE ; 
 int DP_PORT_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC6 (struct intel_dp*) ; 
 TYPE_3__* FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct intel_dp *intel_dp)
{
	struct intel_digital_port *intel_dig_port = FUNC6(intel_dp);
	struct drm_crtc *crtc = intel_dig_port->base.base.crtc;
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 dpa_ctl;

	FUNC5(dev_priv,
			     FUNC7(crtc)->pipe);

	FUNC0("\n");
	dpa_ctl = FUNC1(DP_A);
	FUNC4(dpa_ctl & DP_PLL_ENABLE, "dp pll on, should be off\n");
	FUNC4(dpa_ctl & DP_PORT_EN, "dp port still on, should be off\n");

	/* We don't adjust intel_dp->DP while tearing down the link, to
	 * facilitate link retraining (e.g. after hotplug). Hence clear all
	 * enable bits here to ensure that we don't enable too much. */
	intel_dp->DP &= ~(DP_PORT_EN | DP_AUDIO_OUTPUT_ENABLE);
	intel_dp->DP |= DP_PLL_ENABLE;
	FUNC2(DP_A, intel_dp->DP);
	FUNC3(DP_A);
	FUNC8(200);
}