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
struct intel_dp {int DP; int lane_count; int* link_configuration; int color_range; scalar_t__ has_audio; int /*<<< orphan*/  output_reg; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct drm_display_mode {int flags; int clock; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int DP_AUDIO_OUTPUT_ENABLE ; 
 int DP_DETECTED ; 
 int DP_ENHANCED_FRAMING ; 
 int DP_LANE_COUNT_ENHANCED_FRAME_EN ; 
 int DP_LINK_TRAIN_OFF ; 
 int DP_LINK_TRAIN_OFF_CPT ; 
 int DP_PIPEB_SELECT ; 
 int DP_PLL_FREQ_160MHZ ; 
 int DP_PLL_FREQ_270MHZ ; 
 int DP_PORT_WIDTH_1 ; 
 int DP_PORT_WIDTH_2 ; 
 int DP_PORT_WIDTH_4 ; 
 int DP_PRE_EMPHASIS_0 ; 
 int DP_SYNC_HS_HIGH ; 
 int DP_SYNC_VS_HIGH ; 
 int DP_VOLTAGE_0_4 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 struct intel_dp* FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*,int) ; 
 scalar_t__ FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct intel_crtc* FUNC12 (struct drm_crtc*) ; 

__attribute__((used)) static void
FUNC13(struct drm_encoder *encoder, struct drm_display_mode *mode,
		  struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = encoder->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_dp *intel_dp = FUNC6(encoder);
	struct drm_crtc *crtc = encoder->crtc;
	struct intel_crtc *intel_crtc = FUNC12(crtc);

	/*
	 * There are four kinds of DP registers:
	 *
	 * 	IBX PCH
	 * 	SNB CPU
	 *	IVB CPU
	 * 	CPT PCH
	 *
	 * IBX PCH and CPU are the same for almost everything,
	 * except that the CPU DP PLL is configured in this
	 * register
	 *
	 * CPT PCH is quite different, having many bits moved
	 * to the TRANS_DP_CTL register instead. That
	 * configuration happens (oddly) in ironlake_pch_enable
	 */

	/* Preserve the BIOS-computed detected bit. This is
	 * supposed to be read-only.
	 */
	intel_dp->DP = FUNC3(intel_dp->output_reg) & DP_DETECTED;

	/* Handle DP bits in common between all three register formats */
	intel_dp->DP |= DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;

	switch (intel_dp->lane_count) {
	case 1:
		intel_dp->DP |= DP_PORT_WIDTH_1;
		break;
	case 2:
		intel_dp->DP |= DP_PORT_WIDTH_2;
		break;
	case 4:
		intel_dp->DP |= DP_PORT_WIDTH_4;
		break;
	}
	if (intel_dp->has_audio) {
		FUNC0("Enabling DP audio on pipe %c\n",
				 FUNC11(intel_crtc->pipe));
		intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;
		FUNC8(encoder, adjusted_mode);
	}

	FUNC7(intel_dp);

	/* Split out the IBX/CPU vs CPT settings */

	if (FUNC10(intel_dp) && FUNC4(dev) && !FUNC5(dev)) {
		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
			intel_dp->DP |= DP_SYNC_HS_HIGH;
		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
			intel_dp->DP |= DP_SYNC_VS_HIGH;
		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;

		if (intel_dp->link_configuration[1] & DP_LANE_COUNT_ENHANCED_FRAME_EN)
			intel_dp->DP |= DP_ENHANCED_FRAMING;

		intel_dp->DP |= intel_crtc->pipe << 29;

		/* don't miss out required setting for eDP */
		if (adjusted_mode->clock < 200000)
			intel_dp->DP |= DP_PLL_FREQ_160MHZ;
		else
			intel_dp->DP |= DP_PLL_FREQ_270MHZ;
	} else if (!FUNC1(dev) || FUNC10(intel_dp)) {
		if (!FUNC2(dev))
			intel_dp->DP |= intel_dp->color_range;

		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
			intel_dp->DP |= DP_SYNC_HS_HIGH;
		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
			intel_dp->DP |= DP_SYNC_VS_HIGH;
		intel_dp->DP |= DP_LINK_TRAIN_OFF;

		if (intel_dp->link_configuration[1] & DP_LANE_COUNT_ENHANCED_FRAME_EN)
			intel_dp->DP |= DP_ENHANCED_FRAMING;

		if (intel_crtc->pipe == 1)
			intel_dp->DP |= DP_PIPEB_SELECT;

		if (FUNC10(intel_dp)) {
			/* don't miss out required setting for eDP */
			if (adjusted_mode->clock < 200000)
				intel_dp->DP |= DP_PLL_FREQ_160MHZ;
			else
				intel_dp->DP |= DP_PLL_FREQ_270MHZ;
		}
	} else {
		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
	}

	if (FUNC10(intel_dp))
		FUNC9(crtc, adjusted_mode->clock);
}