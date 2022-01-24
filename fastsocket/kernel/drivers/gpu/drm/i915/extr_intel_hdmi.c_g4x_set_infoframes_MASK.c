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
struct drm_i915_private {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
#define  PORT_B 129 
#define  PORT_C 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int VIDEO_DIP_CTL ; 
 int VIDEO_DIP_ENABLE ; 
 int VIDEO_DIP_ENABLE_VENDOR ; 
 int VIDEO_DIP_FREQ_VSYNC ; 
 int VIDEO_DIP_PORT_B ; 
 int VIDEO_DIP_PORT_C ; 
 int VIDEO_DIP_PORT_MASK ; 
 int VIDEO_DIP_SELECT_AVI ; 
 int /*<<< orphan*/  FUNC4 (struct intel_hdmi*) ; 
 struct intel_digital_port* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC8(struct drm_encoder *encoder,
			       struct drm_display_mode *adjusted_mode)
{
	struct drm_i915_private *dev_priv = encoder->dev->dev_private;
	struct intel_digital_port *intel_dig_port = FUNC5(encoder);
	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
	u32 reg = VIDEO_DIP_CTL;
	u32 val = FUNC1(reg);
	u32 port;

	FUNC4(intel_hdmi);

	/* If the registers were not initialized yet, they might be zeroes,
	 * which means we're selecting the AVI DIP and we're setting its
	 * frequency to once. This seems to really confuse the HW and make
	 * things stop working (the register spec says the AVI always needs to
	 * be sent every VSync). So here we avoid writing to the register more
	 * than we need and also explicitly select the AVI DIP and explicitly
	 * set its frequency to every VSync. Avoiding to write it twice seems to
	 * be enough to solve the problem, but being defensive shouldn't hurt us
	 * either. */
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
	val &= ~VIDEO_DIP_ENABLE_VENDOR;

	FUNC2(reg, val);
	FUNC3(reg);

	FUNC6(encoder, adjusted_mode);
	FUNC7(encoder);
}