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
typedef  int u32 ;
struct intel_hdmi {int /*<<< orphan*/  has_hdmi_sink; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; TYPE_1__* dev; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_ENABLE ; 
 int VIDEO_DIP_ENABLE_AVI ; 
 int VIDEO_DIP_ENABLE_GAMUT ; 
 int VIDEO_DIP_ENABLE_GCP ; 
 int VIDEO_DIP_ENABLE_VENDOR ; 
 int VIDEO_DIP_FREQ_VSYNC ; 
 int VIDEO_DIP_SELECT_AVI ; 
 int /*<<< orphan*/  FUNC4 (struct intel_hdmi*) ; 
 struct intel_hdmi* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 
 struct intel_crtc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct drm_encoder *encoder,
			       struct drm_display_mode *adjusted_mode)
{
	struct drm_i915_private *dev_priv = encoder->dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC8(encoder->crtc);
	struct intel_hdmi *intel_hdmi = FUNC5(encoder);
	u32 reg = FUNC3(intel_crtc->pipe);
	u32 val = FUNC0(reg);

	FUNC4(intel_hdmi);

	/* See the big comment in g4x_set_infoframes() */
	val |= VIDEO_DIP_SELECT_AVI | VIDEO_DIP_FREQ_VSYNC;

	if (!intel_hdmi->has_hdmi_sink) {
		if (!(val & VIDEO_DIP_ENABLE))
			return;
		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI);
		FUNC1(reg, val);
		FUNC2(reg);
		return;
	}

	/* Set both together, unset both together: see the spec. */
	val |= VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI;
	val &= ~(VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
		 VIDEO_DIP_ENABLE_GCP);

	FUNC1(reg, val);
	FUNC2(reg);

	FUNC6(encoder, adjusted_mode);
	FUNC7(encoder);
}