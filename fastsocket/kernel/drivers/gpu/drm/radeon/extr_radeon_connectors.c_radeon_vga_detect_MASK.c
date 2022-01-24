#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ bios_hardcoded_edid_size; } ;
struct radeon_device {TYPE_2__ mode_info; int /*<<< orphan*/  is_atom_bios; } ;
struct radeon_connector {int detected_by_load; int use_digital; scalar_t__ dac_load_detect; TYPE_3__* edid; scalar_t__ shared_ddc; TYPE_1__* ddc_bus; int /*<<< orphan*/  base; } ;
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int status; struct drm_device* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_7__ {int input; } ;
struct TYPE_5__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int DRM_EDID_INPUT_DIGITAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct drm_encoder* FUNC4 (struct drm_connector*) ; 
 int FUNC5 (struct drm_connector*,struct drm_encoder*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,int) ; 
 int FUNC7 (struct radeon_connector*,int) ; 
 int FUNC8 (struct drm_encoder*,struct drm_connector*) ; 
 struct radeon_connector* FUNC9 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC10(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_connector *radeon_connector = FUNC9(connector);
	struct drm_encoder *encoder;
	struct drm_encoder_helper_funcs *encoder_funcs;
	bool dret = false;
	enum drm_connector_status ret = connector_status_disconnected;

	encoder = FUNC4(connector);
	if (!encoder)
		ret = connector_status_disconnected;

	if (radeon_connector->ddc_bus)
		dret = FUNC7(radeon_connector, false);
	if (dret) {
		radeon_connector->detected_by_load = false;
		if (radeon_connector->edid) {
			FUNC3(radeon_connector->edid);
			radeon_connector->edid = NULL;
		}
		radeon_connector->edid = FUNC2(&radeon_connector->base, &radeon_connector->ddc_bus->adapter);

		if (!radeon_connector->edid) {
			FUNC0("%s: probed a monitor but no|invalid EDID\n",
					FUNC1(connector));
			ret = connector_status_connected;
		} else {
			radeon_connector->use_digital = !!(radeon_connector->edid->input & DRM_EDID_INPUT_DIGITAL);

			/* some oems have boards with separate digital and analog connectors
			 * with a shared ddc line (often vga + hdmi)
			 */
			if (radeon_connector->use_digital && radeon_connector->shared_ddc) {
				FUNC3(radeon_connector->edid);
				radeon_connector->edid = NULL;
				ret = connector_status_disconnected;
			} else
				ret = connector_status_connected;
		}
	} else {

		/* if we aren't forcing don't do destructive polling */
		if (!force) {
			/* only return the previous status if we last
			 * detected a monitor via load.
			 */
			if (radeon_connector->detected_by_load)
				return connector->status;
			else
				return ret;
		}

		if (radeon_connector->dac_load_detect && encoder) {
			encoder_funcs = encoder->helper_private;
			ret = encoder_funcs->detect(encoder, connector);
			if (ret != connector_status_disconnected)
				radeon_connector->detected_by_load = true;
		}
	}

	if (ret == connector_status_connected)
		ret = FUNC5(connector, encoder, ret, true);

	/* RN50 and some RV100 asics in servers often have a hardcoded EDID in the
	 * vbios to deal with KVMs. If we have one and are not able to detect a monitor
	 * by other means, assume the CRT is connected and use that EDID.
	 */
	if ((!rdev->is_atom_bios) &&
	    (ret == connector_status_disconnected) &&
	    rdev->mode_info.bios_hardcoded_edid_size) {
		ret = connector_status_connected;
	}

	FUNC6(connector, ret);
	return ret;
}