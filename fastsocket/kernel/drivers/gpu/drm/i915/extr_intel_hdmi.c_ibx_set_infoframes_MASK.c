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
struct intel_digital_port {int port; struct intel_hdmi hdmi; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; TYPE_1__* dev; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
#define  PORT_B 130 
#define  PORT_C 129 
#define  PORT_D 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_ENABLE ; 
 int VIDEO_DIP_ENABLE_GAMUT ; 
 int VIDEO_DIP_ENABLE_GCP ; 
 int VIDEO_DIP_ENABLE_VENDOR ; 
 int VIDEO_DIP_FREQ_VSYNC ; 
 int VIDEO_DIP_PORT_B ; 
 int VIDEO_DIP_PORT_C ; 
 int VIDEO_DIP_PORT_D ; 
 int VIDEO_DIP_PORT_MASK ; 
 int VIDEO_DIP_SELECT_AVI ; 
 int /*<<< orphan*/  FUNC5 (struct intel_hdmi*) ; 
 struct intel_digital_port* FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 struct intel_crtc* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder,
			       struct drm_display_mode *adjusted_mode)
{
	struct drm_i915_private *dev_priv = encoder->dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC9(encoder->crtc);
	struct intel_digital_port *intel_dig_port = FUNC6(encoder);
	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
	u32 reg = FUNC4(intel_crtc->pipe);
	u32 val = FUNC1(reg);
	u32 port;

	FUNC5(intel_hdmi);

	/* See the big comment in g4x_set_infoframes() */
	val |= VIDEO_DIP_SELECT_AVI | VIDEO_DIP_FREQ_VSYNC;

	if (!intel_hdmi->has_hdmi_sink) {
		if (!(val & VIDEO_DIP_ENABLE))
			return;
		val &= ~VIDEO_DIP_ENABLE;
		FUNC2(reg, val);
		FUNC3(reg);
		return;
	}

	switch (intel_dig_port->port) {
	case PORT_B:
		port = VIDEO_DIP_PORT_B;
		break;
	case PORT_C:
		port = VIDEO_DIP_PORT_C;
		break;
	case PORT_D:
		port = VIDEO_DIP_PORT_D;
		break;
	default:
		FUNC0();
		return;
	}

	if (port != (val & VIDEO_DIP_PORT_MASK)) {
		if (val & VIDEO_DIP_ENABLE) {
			val &= ~VIDEO_DIP_ENABLE;
			FUNC2(reg, val);
			FUNC3(reg);
		}
		val &= ~VIDEO_DIP_PORT_MASK;
		val |= port;
	}

	val |= VIDEO_DIP_ENABLE;
	val &= ~(VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
		 VIDEO_DIP_ENABLE_GCP);

	FUNC2(reg, val);
	FUNC3(reg);

	FUNC7(encoder, adjusted_mode);
	FUNC8(encoder);
}