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
typedef  int u8 ;
struct intel_sdvo_connector {scalar_t__ force_audio; } ;
struct intel_sdvo {int ddc_bus; int has_hdmi_audio; int /*<<< orphan*/  rgb_quant_range_selectable; int /*<<< orphan*/  has_hdmi_monitor; scalar_t__ is_hdmi; } ;
struct edid {int input; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int DRM_EDID_INPUT_DIGITAL ; 
 scalar_t__ HDMI_AUDIO_AUTO ; 
 scalar_t__ HDMI_AUDIO_ON ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 int /*<<< orphan*/  FUNC0 (struct edid*) ; 
 int FUNC1 (struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 
 struct intel_sdvo* FUNC3 (struct drm_connector*) ; 
 struct edid* FUNC4 (struct drm_connector*) ; 
 struct edid* FUNC5 (struct drm_connector*) ; 
 scalar_t__ FUNC6 (struct intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC7 (struct edid*) ; 
 struct intel_sdvo_connector* FUNC8 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC9(struct drm_connector *connector)
{
	struct intel_sdvo *intel_sdvo = FUNC3(connector);
	enum drm_connector_status status;
	struct edid *edid;

	edid = FUNC5(connector);

	if (edid == NULL && FUNC6(intel_sdvo)) {
		u8 ddc, saved_ddc = intel_sdvo->ddc_bus;

		/*
		 * Don't use the 1 as the argument of DDC bus switch to get
		 * the EDID. It is used for SDVO SPD ROM.
		 */
		for (ddc = intel_sdvo->ddc_bus >> 1; ddc > 1; ddc >>= 1) {
			intel_sdvo->ddc_bus = ddc;
			edid = FUNC5(connector);
			if (edid)
				break;
		}
		/*
		 * If we found the EDID on the other bus,
		 * assume that is the correct DDC bus.
		 */
		if (edid == NULL)
			intel_sdvo->ddc_bus = saved_ddc;
	}

	/*
	 * When there is no edid and no monitor is connected with VGA
	 * port, try to use the CRT ddc to read the EDID for DVI-connector.
	 */
	if (edid == NULL)
		edid = FUNC4(connector);

	status = connector_status_unknown;
	if (edid != NULL) {
		/* DDC bus is shared, match EDID to connector type */
		if (edid->input & DRM_EDID_INPUT_DIGITAL) {
			status = connector_status_connected;
			if (intel_sdvo->is_hdmi) {
				intel_sdvo->has_hdmi_monitor = FUNC0(edid);
				intel_sdvo->has_hdmi_audio = FUNC1(edid);
				intel_sdvo->rgb_quant_range_selectable =
					FUNC2(edid);
			}
		} else
			status = connector_status_disconnected;
		FUNC7(edid);
	}

	if (status == connector_status_connected) {
		struct intel_sdvo_connector *intel_sdvo_connector = FUNC8(connector);
		if (intel_sdvo_connector->force_audio != HDMI_AUDIO_AUTO)
			intel_sdvo->has_hdmi_audio = (intel_sdvo_connector->force_audio == HDMI_AUDIO_ON);
	}

	return status;
}