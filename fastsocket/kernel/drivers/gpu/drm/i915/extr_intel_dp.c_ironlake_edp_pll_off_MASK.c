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
struct intel_dp {int dummy; } ;
struct TYPE_4__ {struct drm_crtc* crtc; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_A ; 
 int DP_PLL_ENABLE ; 
 int DP_PORT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC5 (struct intel_dp*) ; 
 TYPE_3__* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct intel_dp *intel_dp)
{
	struct intel_digital_port *intel_dig_port = FUNC5(intel_dp);
	struct drm_crtc *crtc = intel_dig_port->base.base.crtc;
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 dpa_ctl;

	FUNC4(dev_priv,
			     FUNC6(crtc)->pipe);

	dpa_ctl = FUNC0(DP_A);
	FUNC3((dpa_ctl & DP_PLL_ENABLE) == 0,
	     "dp pll off, should be on\n");
	FUNC3(dpa_ctl & DP_PORT_EN, "dp port still on, should be off\n");

	/* We can't rely on the value tracked for the DP register in
	 * intel_dp->DP because link_down must not change that (otherwise link
	 * re-training will fail. */
	dpa_ctl &= ~DP_PLL_ENABLE;
	FUNC1(DP_A, dpa_ctl);
	FUNC2(DP_A);
	FUNC7(200);
}