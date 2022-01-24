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
struct drm_encoder {int dummy; } ;
struct intel_encoder {int crtc_mask; int cloneable; int /*<<< orphan*/  type; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; struct drm_encoder base; } ;
struct TYPE_4__ {scalar_t__ output_reg; } ;
struct TYPE_3__ {int sdvox_reg; } ;
struct intel_digital_port {int port; TYPE_2__ dp; TYPE_1__ hdmi; struct intel_encoder base; } ;
struct intel_connector {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_disable_hdmi ; 
 int /*<<< orphan*/  intel_enable_hdmi ; 
 int /*<<< orphan*/  intel_hdmi_enc_funcs ; 
 int /*<<< orphan*/  intel_hdmi_get_hw_state ; 
 int /*<<< orphan*/  intel_hdmi_helper_funcs ; 
 int /*<<< orphan*/  FUNC2 (struct intel_digital_port*,struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_digital_port*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_device *dev, int sdvox_reg, enum port port)
{
	struct intel_digital_port *intel_dig_port;
	struct intel_encoder *intel_encoder;
	struct drm_encoder *encoder;
	struct intel_connector *intel_connector;

	intel_dig_port = FUNC4(sizeof(struct intel_digital_port), GFP_KERNEL);
	if (!intel_dig_port)
		return;

	intel_connector = FUNC4(sizeof(struct intel_connector), GFP_KERNEL);
	if (!intel_connector) {
		FUNC3(intel_dig_port);
		return;
	}

	intel_encoder = &intel_dig_port->base;
	encoder = &intel_encoder->base;

	FUNC1(dev, &intel_encoder->base, &intel_hdmi_enc_funcs,
			 DRM_MODE_ENCODER_TMDS);
	FUNC0(&intel_encoder->base, &intel_hdmi_helper_funcs);

	intel_encoder->enable = intel_enable_hdmi;
	intel_encoder->disable = intel_disable_hdmi;
	intel_encoder->get_hw_state = intel_hdmi_get_hw_state;

	intel_encoder->type = INTEL_OUTPUT_HDMI;
	intel_encoder->crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);
	intel_encoder->cloneable = false;

	intel_dig_port->port = port;
	intel_dig_port->hdmi.sdvox_reg = sdvox_reg;
	intel_dig_port->dp.output_reg = 0;

	FUNC2(intel_dig_port, intel_connector);
}