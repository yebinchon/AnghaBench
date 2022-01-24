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
struct drm_encoder {TYPE_1__* dev; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_BUF_CTL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DP_TP_CTL_ENABLE ; 
 int DP_TP_CTL_LINK_TRAIN_MASK ; 
 int DP_TP_CTL_LINK_TRAIN_PAT1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int INTEL_OUTPUT_EDP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PORT_CLK_SEL_NONE ; 
 struct intel_dp* FUNC5 (struct drm_encoder*) ; 
 int FUNC6 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC10(struct intel_encoder *intel_encoder)
{
	struct drm_encoder *encoder = &intel_encoder->base;
	struct drm_i915_private *dev_priv = encoder->dev->dev_private;
	enum port port = FUNC6(intel_encoder);
	int type = intel_encoder->type;
	uint32_t val;
	bool wait = false;

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

	if (wait)
		FUNC7(dev_priv, port);

	if (type == INTEL_OUTPUT_EDP) {
		struct intel_dp *intel_dp = FUNC5(encoder);
		FUNC9(intel_dp);
		FUNC8(intel_dp);
	}

	FUNC3(FUNC4(port), PORT_CLK_SEL_NONE);
}