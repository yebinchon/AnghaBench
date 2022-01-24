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
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_dp {int /*<<< orphan*/  output_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int DP_PORT_EN ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct intel_dp* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC10(struct intel_encoder *encoder)
{
	struct intel_dp *intel_dp = FUNC2(&encoder->base);
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	uint32_t dp_reg = FUNC0(intel_dp->output_reg);

	if (FUNC1(dp_reg & DP_PORT_EN))
		return;

	FUNC9(intel_dp);
	FUNC4(intel_dp, DRM_MODE_DPMS_ON);
	FUNC5(intel_dp);
	FUNC7(intel_dp);
	FUNC8(intel_dp, true);
	FUNC3(intel_dp);
	FUNC6(intel_dp);
}