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
struct intel_hdmi {int /*<<< orphan*/  set_infoframes; int /*<<< orphan*/  write_infoframe; int /*<<< orphan*/  ddc_bus; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_digital_port {int port; struct intel_encoder base; struct intel_hdmi hdmi; } ;
struct drm_connector {int interlace_allowed; scalar_t__ doublescan_allowed; int /*<<< orphan*/  polled; } ;
struct intel_connector {int /*<<< orphan*/  get_hw_state; struct drm_connector base; } ;
struct drm_i915_private {int /*<<< orphan*/  hotplug_supported_mask; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 int /*<<< orphan*/  GMBUS_PORT_DPB ; 
 int /*<<< orphan*/  GMBUS_PORT_DPC ; 
 int /*<<< orphan*/  GMBUS_PORT_DPD ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 scalar_t__ FUNC8 (struct drm_device*) ; 
 scalar_t__ FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  PEG_BAND_GAP_DATA ; 
 int /*<<< orphan*/  PORTB_HOTPLUG_INT_STATUS ; 
 int /*<<< orphan*/  PORTC_HOTPLUG_INT_STATUS ; 
 int /*<<< orphan*/  PORTD_HOTPLUG_INT_STATUS ; 
#define  PORT_A 131 
#define  PORT_B 130 
#define  PORT_C 129 
#define  PORT_D 128 
 int /*<<< orphan*/  cpt_set_infoframes ; 
 int /*<<< orphan*/  cpt_write_infoframe ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_connector*) ; 
 int /*<<< orphan*/  g4x_set_infoframes ; 
 int /*<<< orphan*/  g4x_write_infoframe ; 
 int /*<<< orphan*/  hsw_set_infoframes ; 
 int /*<<< orphan*/  hsw_write_infoframe ; 
 int /*<<< orphan*/  ibx_set_infoframes ; 
 int /*<<< orphan*/  ibx_write_infoframe ; 
 int /*<<< orphan*/  FUNC13 (struct intel_connector*,struct intel_encoder*) ; 
 int /*<<< orphan*/  intel_connector_get_hw_state ; 
 int /*<<< orphan*/  intel_ddi_connector_get_hw_state ; 
 int /*<<< orphan*/  FUNC14 (struct intel_hdmi*,struct drm_connector*) ; 
 int /*<<< orphan*/  intel_hdmi_connector_funcs ; 
 int /*<<< orphan*/  intel_hdmi_connector_helper_funcs ; 
 int /*<<< orphan*/  vlv_set_infoframes ; 
 int /*<<< orphan*/  vlv_write_infoframe ; 

void FUNC15(struct intel_digital_port *intel_dig_port,
			       struct intel_connector *intel_connector)
{
	struct drm_connector *connector = &intel_connector->base;
	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
	struct intel_encoder *intel_encoder = &intel_dig_port->base;
	struct drm_device *dev = intel_encoder->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	enum port port = intel_dig_port->port;

	FUNC11(dev, connector, &intel_hdmi_connector_funcs,
			   DRM_MODE_CONNECTOR_HDMIA);
	FUNC10(connector, &intel_hdmi_connector_helper_funcs);

	connector->polled = DRM_CONNECTOR_POLL_HPD;
	connector->interlace_allowed = 1;
	connector->doublescan_allowed = 0;

	switch (port) {
	case PORT_B:
		intel_hdmi->ddc_bus = GMBUS_PORT_DPB;
		dev_priv->hotplug_supported_mask |= PORTB_HOTPLUG_INT_STATUS;
		break;
	case PORT_C:
		intel_hdmi->ddc_bus = GMBUS_PORT_DPC;
		dev_priv->hotplug_supported_mask |= PORTC_HOTPLUG_INT_STATUS;
		break;
	case PORT_D:
		intel_hdmi->ddc_bus = GMBUS_PORT_DPD;
		dev_priv->hotplug_supported_mask |= PORTD_HOTPLUG_INT_STATUS;
		break;
	case PORT_A:
		/* Internal port only for eDP. */
	default:
		FUNC0();
	}

	if (!FUNC3(dev)) {
		intel_hdmi->write_infoframe = g4x_write_infoframe;
		intel_hdmi->set_infoframes = g4x_set_infoframes;
	} else if (FUNC9(dev)) {
		intel_hdmi->write_infoframe = vlv_write_infoframe;
		intel_hdmi->set_infoframes = vlv_set_infoframes;
	} else if (FUNC8(dev)) {
		intel_hdmi->write_infoframe = hsw_write_infoframe;
		intel_hdmi->set_infoframes = hsw_set_infoframes;
	} else if (FUNC2(dev)) {
		intel_hdmi->write_infoframe = ibx_write_infoframe;
		intel_hdmi->set_infoframes = ibx_set_infoframes;
	} else {
		intel_hdmi->write_infoframe = cpt_write_infoframe;
		intel_hdmi->set_infoframes = cpt_set_infoframes;
	}

	if (FUNC1(dev))
		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
	else
		intel_connector->get_hw_state = intel_connector_get_hw_state;

	FUNC14(intel_hdmi, connector);

	FUNC13(intel_connector, intel_encoder);
	FUNC12(connector);

	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
	 * 0xd.  Failure to do so will result in spurious interrupts being
	 * generated on the port when a cable is not attached.
	 */
	if (FUNC6(dev) && !FUNC7(dev)) {
		u32 temp = FUNC4(PEG_BAND_GAP_DATA);
		FUNC5(PEG_BAND_GAP_DATA, (temp & ~0xf) | 0xd);
	}
}