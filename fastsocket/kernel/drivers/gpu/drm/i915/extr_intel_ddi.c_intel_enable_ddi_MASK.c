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
typedef  int uint32_t ;
struct drm_encoder {struct drm_device* dev; struct drm_crtc* crtc; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {int port_reversal; } ;
struct intel_crtc {int pipe; scalar_t__ eld_vld; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int AUDIO_ELD_VALID_A ; 
 int AUDIO_OUTPUT_ENABLE_A ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_BUF_CTL_ENABLE ; 
 int /*<<< orphan*/  HSW_AUD_PIN_ELD_CP_VLD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int INTEL_OUTPUT_EDP ; 
 int INTEL_OUTPUT_HDMI ; 
 struct intel_digital_port* FUNC3 (struct drm_encoder*) ; 
 struct intel_dp* FUNC4 (struct drm_encoder*) ; 
 int FUNC5 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 struct intel_crtc* FUNC7 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC8(struct intel_encoder *intel_encoder)
{
	struct drm_encoder *encoder = &intel_encoder->base;
	struct drm_crtc *crtc = encoder->crtc;
	struct intel_crtc *intel_crtc = FUNC7(crtc);
	int pipe = intel_crtc->pipe;
	struct drm_device *dev = encoder->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	enum port port = FUNC5(intel_encoder);
	int type = intel_encoder->type;
	uint32_t tmp;

	if (type == INTEL_OUTPUT_HDMI) {
		struct intel_digital_port *intel_dig_port =
			FUNC3(encoder);

		/* In HDMI/DVI mode, the port width, and swing/emphasis values
		 * are ignored so nothing special needs to be done besides
		 * enabling the port.
		 */
		FUNC2(FUNC0(port),
			   intel_dig_port->port_reversal | DDI_BUF_CTL_ENABLE);
	} else if (type == INTEL_OUTPUT_EDP) {
		struct intel_dp *intel_dp = FUNC4(encoder);

		FUNC6(intel_dp);
	}

	if (intel_crtc->eld_vld) {
		tmp = FUNC1(HSW_AUD_PIN_ELD_CP_VLD);
		tmp |= ((AUDIO_OUTPUT_ENABLE_A | AUDIO_ELD_VALID_A) << (pipe * 4));
		FUNC2(HSW_AUD_PIN_ELD_CP_VLD, tmp);
	}
}