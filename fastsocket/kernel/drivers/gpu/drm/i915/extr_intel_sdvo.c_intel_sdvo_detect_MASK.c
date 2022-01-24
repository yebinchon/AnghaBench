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
typedef  int uint16_t ;
struct intel_sdvo_connector {int output_flag; } ;
struct TYPE_2__ {int needs_tv_clock; } ;
struct intel_sdvo {int attached_output; int has_hdmi_monitor; int has_hdmi_audio; int rgb_quant_range_selectable; int is_tv; int is_lvds; int /*<<< orphan*/ * sdvo_lvds_fixed_mode; TYPE_1__ base; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 scalar_t__ FUNC1 (struct intel_sdvo_connector*) ; 
 int /*<<< orphan*/  SDVO_CMD_GET_ATTACHED_DISPLAYS ; 
 int SDVO_LVDS_MASK ; 
 int SDVO_TV_MASK ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 struct intel_sdvo* FUNC2 (struct drm_connector*) ; 
 scalar_t__ FUNC3 (struct intel_sdvo_connector*,struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*) ; 
 struct edid* FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sdvo*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC7 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC8 (struct edid*) ; 
 struct intel_sdvo_connector* FUNC9 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC10(struct drm_connector *connector, bool force)
{
	uint16_t response;
	struct intel_sdvo *intel_sdvo = FUNC2(connector);
	struct intel_sdvo_connector *intel_sdvo_connector = FUNC9(connector);
	enum drm_connector_status ret;

	if (!FUNC6(intel_sdvo,
				  SDVO_CMD_GET_ATTACHED_DISPLAYS,
				  &response, 2))
		return connector_status_unknown;

	FUNC0("SDVO response %d %d [%x]\n",
		      response & 0xff, response >> 8,
		      intel_sdvo_connector->output_flag);

	if (response == 0)
		return connector_status_disconnected;

	intel_sdvo->attached_output = response;

	intel_sdvo->has_hdmi_monitor = false;
	intel_sdvo->has_hdmi_audio = false;
	intel_sdvo->rgb_quant_range_selectable = false;

	if ((intel_sdvo_connector->output_flag & response) == 0)
		ret = connector_status_disconnected;
	else if (FUNC1(intel_sdvo_connector))
		ret = FUNC7(connector);
	else {
		struct edid *edid;

		/* if we have an edid check it matches the connection */
		edid = FUNC5(connector);
		if (edid == NULL)
			edid = FUNC4(connector);
		if (edid != NULL) {
			if (FUNC3(intel_sdvo_connector,
							      edid))
				ret = connector_status_connected;
			else
				ret = connector_status_disconnected;

			FUNC8(edid);
		} else
			ret = connector_status_connected;
	}

	/* May update encoder flag for like clock for SDVO TV, etc.*/
	if (ret == connector_status_connected) {
		intel_sdvo->is_tv = false;
		intel_sdvo->is_lvds = false;
		intel_sdvo->base.needs_tv_clock = false;

		if (response & SDVO_TV_MASK) {
			intel_sdvo->is_tv = true;
			intel_sdvo->base.needs_tv_clock = true;
		}
		if (response & SDVO_LVDS_MASK)
			intel_sdvo->is_lvds = intel_sdvo->sdvo_lvds_fixed_mode != NULL;
	}

	return ret;
}