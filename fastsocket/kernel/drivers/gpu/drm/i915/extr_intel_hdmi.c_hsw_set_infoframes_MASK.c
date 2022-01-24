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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int VIDEO_DIP_ENABLE_GCP_HSW ; 
 int VIDEO_DIP_ENABLE_GMP_HSW ; 
 int VIDEO_DIP_ENABLE_VSC_HSW ; 
 int VIDEO_DIP_ENABLE_VS_HSW ; 
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
	u32 reg = FUNC0(intel_crtc->pipe);
	u32 val = FUNC1(reg);

	FUNC4(intel_hdmi);

	if (!intel_hdmi->has_hdmi_sink) {
		FUNC2(reg, 0);
		FUNC3(reg);
		return;
	}

	val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
		 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW);

	FUNC2(reg, val);
	FUNC3(reg);

	FUNC6(encoder, adjusted_mode);
	FUNC7(encoder);
}