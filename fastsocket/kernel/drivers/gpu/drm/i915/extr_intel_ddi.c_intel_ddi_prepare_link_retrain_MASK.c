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
typedef  int uint32_t ;
struct intel_dp {int* link_configuration; int DP; } ;
struct intel_digital_port {int port; struct intel_dp dp; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_BUF_CTL_ENABLE ; 
 int DP_LANE_COUNT_ENHANCED_FRAME_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DP_TP_CTL_ENABLE ; 
 int DP_TP_CTL_ENHANCED_FRAME_ENABLE ; 
 int DP_TP_CTL_LINK_TRAIN_MASK ; 
 int DP_TP_CTL_LINK_TRAIN_PAT1 ; 
 int DP_TP_CTL_MODE_SST ; 
 int DP_TP_CTL_SCRAMBLE_DISABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(struct drm_encoder *encoder)
{
	struct intel_digital_port *intel_dig_port = FUNC5(encoder);
	struct intel_dp *intel_dp = &intel_dig_port->dp;
	struct drm_i915_private *dev_priv = encoder->dev->dev_private;
	enum port port = intel_dig_port->port;
	uint32_t val;
	bool wait = false;

	if (FUNC2(FUNC1(port)) & DP_TP_CTL_ENABLE) {
		val = FUNC2(FUNC0(port));
		if (val & DDI_BUF_CTL_ENABLE) {
			val &= ~DDI_BUF_CTL_ENABLE;
			FUNC3(FUNC0(port), val);
			wait = true;
		}

		val = FUNC2(FUNC1(port));
		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
		val |= DP_TP_CTL_LINK_TRAIN_PAT1;
		FUNC3(FUNC1(port), val);
		FUNC4(FUNC1(port));

		if (wait)
			FUNC6(dev_priv, port);
	}

	val = DP_TP_CTL_ENABLE | DP_TP_CTL_MODE_SST |
	      DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_SCRAMBLE_DISABLE;
	if (intel_dp->link_configuration[1] & DP_LANE_COUNT_ENHANCED_FRAME_EN)
		val |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
	FUNC3(FUNC1(port), val);
	FUNC4(FUNC1(port));

	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
	FUNC3(FUNC0(port), intel_dp->DP);
	FUNC4(FUNC0(port));

	FUNC7(600);
}