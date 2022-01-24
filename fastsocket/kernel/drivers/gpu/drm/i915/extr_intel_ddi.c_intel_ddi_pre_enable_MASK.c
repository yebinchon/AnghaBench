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
struct drm_encoder {TYPE_1__* dev; struct drm_crtc* crtc; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_dp {int dummy; } ;
struct intel_crtc {scalar_t__ ddi_pll_sel; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int INTEL_OUTPUT_DISPLAYPORT ; 
 int INTEL_OUTPUT_EDP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ PORT_CLK_SEL_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct intel_dp* FUNC3 (struct drm_encoder*) ; 
 int FUNC4 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_dp*) ; 
 struct intel_crtc* FUNC11 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC12(struct intel_encoder *intel_encoder)
{
	struct drm_encoder *encoder = &intel_encoder->base;
	struct drm_crtc *crtc = encoder->crtc;
	struct drm_i915_private *dev_priv = encoder->dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC11(crtc);
	enum port port = FUNC4(intel_encoder);
	int type = intel_encoder->type;

	if (type == INTEL_OUTPUT_EDP) {
		struct intel_dp *intel_dp = FUNC3(encoder);
		FUNC10(intel_dp);
		FUNC8(intel_dp);
		FUNC9(intel_dp, true);
	}

	FUNC2(intel_crtc->ddi_pll_sel == PORT_CLK_SEL_NONE);
	FUNC0(FUNC1(port), intel_crtc->ddi_pll_sel);

	if (type == INTEL_OUTPUT_DISPLAYPORT || type == INTEL_OUTPUT_EDP) {
		struct intel_dp *intel_dp = FUNC3(encoder);

		FUNC6(intel_dp, DRM_MODE_DPMS_ON);
		FUNC7(intel_dp);
		FUNC5(intel_dp);
	}
}