#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_sdvo_in_out_map {scalar_t__ in1; int /*<<< orphan*/  in0; } ;
struct TYPE_3__ {int sdvo_flags; } ;
struct intel_sdvo_dtd {TYPE_1__ part2; } ;
struct intel_sdvo {int dtd_sdvo_flags; int color_range; int sdvo_reg; scalar_t__ has_hdmi_audio; scalar_t__ is_hdmi; scalar_t__ is_lvds; scalar_t__ is_tv; scalar_t__ has_hdmi_monitor; struct drm_display_mode* sdvo_lvds_fixed_mode; int /*<<< orphan*/  attached_output; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
typedef  int /*<<< orphan*/  in_out ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int FUNC2 (int) ; 
 TYPE_2__* FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 scalar_t__ PCH_CPT ; 
#define  SDVOB 129 
 int SDVOB_PRESERVE_MASK ; 
#define  SDVOC 128 
 int SDVOC_PRESERVE_MASK ; 
 int SDVO_AUDIO_ENABLE ; 
 int SDVO_BORDER_ENABLE ; 
 int SDVO_CLOCK_RATE_MULT_1X ; 
 int SDVO_CLOCK_RATE_MULT_2X ; 
 int SDVO_CLOCK_RATE_MULT_4X ; 
 int /*<<< orphan*/  SDVO_CMD_SET_IN_OUT_MAP ; 
 int /*<<< orphan*/  SDVO_COLORIMETRY_RGB256 ; 
 int /*<<< orphan*/  SDVO_ENCODE_DVI ; 
 int /*<<< orphan*/  SDVO_ENCODE_HDMI ; 
 int SDVO_HSYNC_ACTIVE_HIGH ; 
 int /*<<< orphan*/  FUNC8 (struct intel_sdvo*) ; 
 int SDVO_NEED_TO_STALL ; 
 int SDVO_PORT_MULTIPLY_SHIFT ; 
 int SDVO_STALL_SELECT ; 
 int SDVO_VSYNC_ACTIVE_HIGH ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_sdvo_dtd*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_sdvo*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_sdvo*,struct intel_sdvo_dtd*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_sdvo*,struct intel_sdvo_dtd*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_sdvo*,int /*<<< orphan*/ ,struct intel_sdvo_in_out_map*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_sdvo*,int) ; 
 struct intel_crtc* FUNC24 (struct drm_crtc*) ; 
 struct intel_sdvo* FUNC25 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC26(struct drm_encoder *encoder,
				struct drm_display_mode *mode,
				struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = encoder->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_crtc *crtc = encoder->crtc;
	struct intel_crtc *intel_crtc = FUNC24(crtc);
	struct intel_sdvo *intel_sdvo = FUNC25(encoder);
	u32 sdvox;
	struct intel_sdvo_in_out_map in_out;
	struct intel_sdvo_dtd input_dtd, output_dtd;
	int pixel_multiplier = FUNC11(adjusted_mode);
	int rate;

	if (!mode)
		return;

	/* First, set the input mapping for the first input to our controlled
	 * output. This is only correct if we're a single-input device, in
	 * which case the first input is the output from the appropriate SDVO
	 * channel on the motherboard.  In a two-input device, the first input
	 * will be SDVOB and the second SDVOC.
	 */
	in_out.in0 = intel_sdvo->attached_output;
	in_out.in1 = 0;

	FUNC22(intel_sdvo,
			     SDVO_CMD_SET_IN_OUT_MAP,
			     &in_out, sizeof(in_out));

	/* Set the output timings to the screen */
	if (!FUNC20(intel_sdvo,
					  intel_sdvo->attached_output))
		return;

	/* lvds has a special fixed output timing. */
	if (intel_sdvo->is_lvds)
		FUNC12(&output_dtd,
					     intel_sdvo->sdvo_lvds_fixed_mode);
	else
		FUNC12(&output_dtd, mode);
	if (!FUNC18(intel_sdvo, &output_dtd))
		FUNC0("Setting output timings on %s failed\n",
			 FUNC8(intel_sdvo));

	/* Set the input timing to the screen. Assume always input 0. */
	if (!FUNC19(intel_sdvo))
		return;

	if (intel_sdvo->has_hdmi_monitor) {
		FUNC16(intel_sdvo, SDVO_ENCODE_HDMI);
		FUNC15(intel_sdvo,
					   SDVO_COLORIMETRY_RGB256);
		FUNC13(intel_sdvo, adjusted_mode);
	} else
		FUNC16(intel_sdvo, SDVO_ENCODE_DVI);

	if (intel_sdvo->is_tv &&
	    !FUNC21(intel_sdvo))
		return;

	/* We have tried to get input timing in mode_fixup, and filled into
	 * adjusted_mode.
	 */
	FUNC12(&input_dtd, adjusted_mode);
	if (intel_sdvo->is_tv || intel_sdvo->is_lvds)
		input_dtd.part2.sdvo_flags = intel_sdvo->dtd_sdvo_flags;
	if (!FUNC17(intel_sdvo, &input_dtd))
		FUNC0("Setting input timings on %s failed\n",
			 FUNC8(intel_sdvo));

	switch (pixel_multiplier) {
	default:
	case 1: rate = SDVO_CLOCK_RATE_MULT_1X; break;
	case 2: rate = SDVO_CLOCK_RATE_MULT_2X; break;
	case 4: rate = SDVO_CLOCK_RATE_MULT_4X; break;
	}
	if (!FUNC14(intel_sdvo, rate))
		return;

	/* Set the SDVO control regs. */
	if (FUNC3(dev)->gen >= 4) {
		/* The real mode polarity is set by the SDVO commands, using
		 * struct intel_sdvo_dtd. */
		sdvox = SDVO_VSYNC_ACTIVE_HIGH | SDVO_HSYNC_ACTIVE_HIGH;
		if (!FUNC1(dev) && intel_sdvo->is_hdmi)
			sdvox |= intel_sdvo->color_range;
		if (FUNC3(dev)->gen < 5)
			sdvox |= SDVO_BORDER_ENABLE;
	} else {
		sdvox = FUNC2(intel_sdvo->sdvo_reg);
		switch (intel_sdvo->sdvo_reg) {
		case SDVOB:
			sdvox &= SDVOB_PRESERVE_MASK;
			break;
		case SDVOC:
			sdvox &= SDVOC_PRESERVE_MASK;
			break;
		}
		sdvox |= (9 << 19) | SDVO_BORDER_ENABLE;
	}

	if (FUNC4(dev) >= PCH_CPT)
		sdvox |= FUNC10(intel_crtc->pipe);
	else
		sdvox |= FUNC9(intel_crtc->pipe);

	if (intel_sdvo->has_hdmi_audio)
		sdvox |= SDVO_AUDIO_ENABLE;

	if (FUNC3(dev)->gen >= 4) {
		/* done in crtc_mode_set as the dpll_md reg must be written early */
	} else if (FUNC6(dev) || FUNC7(dev) || FUNC5(dev)) {
		/* done in crtc_mode_set as it lives inside the dpll register */
	} else {
		sdvox |= (pixel_multiplier - 1) << SDVO_PORT_MULTIPLY_SHIFT;
	}

	if (input_dtd.part2.sdvo_flags & SDVO_NEED_TO_STALL &&
	    FUNC3(dev)->gen < 5)
		sdvox |= SDVO_STALL_SELECT;
	FUNC23(intel_sdvo, sdvox);
}