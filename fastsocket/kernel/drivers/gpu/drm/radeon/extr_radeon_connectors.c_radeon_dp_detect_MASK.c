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
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct radeon_encoder {struct drm_display_mode native_mode; } ;
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {scalar_t__ dp_sink_type; int /*<<< orphan*/  edp_on; } ;
struct TYPE_2__ {int /*<<< orphan*/  hpd; } ;
struct radeon_connector {TYPE_1__ hpd; scalar_t__ dac_load_detect; int /*<<< orphan*/ * edid; struct radeon_connector_atom_dig* con_priv; } ;
struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int status; scalar_t__ connector_type; struct drm_device* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_OFF ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ; 
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC3 (struct drm_connector*) ; 
 scalar_t__ FUNC4 (struct drm_connector*) ; 
 scalar_t__ FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,int) ; 
 scalar_t__ FUNC7 (struct radeon_connector*,int) ; 
 scalar_t__ FUNC8 (struct radeon_connector*) ; 
 scalar_t__ FUNC9 (struct radeon_connector*) ; 
 scalar_t__ FUNC10 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct drm_encoder*,struct drm_connector*) ; 
 struct radeon_connector* FUNC12 (struct drm_connector*) ; 
 struct radeon_encoder* FUNC13 (struct drm_encoder*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC14(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_connector *radeon_connector = FUNC12(connector);
	enum drm_connector_status ret = connector_status_disconnected;
	struct radeon_connector_atom_dig *radeon_dig_connector = radeon_connector->con_priv;
	struct drm_encoder *encoder = FUNC3(connector);

	if (!force && FUNC4(connector))
		return connector->status;

	if (radeon_connector->edid) {
		FUNC1(radeon_connector->edid);
		radeon_connector->edid = NULL;
	}

	if ((connector->connector_type == DRM_MODE_CONNECTOR_eDP) ||
	    (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)) {
		if (encoder) {
			struct radeon_encoder *radeon_encoder = FUNC13(encoder);
			struct drm_display_mode *native_mode = &radeon_encoder->native_mode;

			/* check if panel is valid */
			if (native_mode->hdisplay >= 320 && native_mode->vdisplay >= 240)
				ret = connector_status_connected;
		}
		/* eDP is always DP */
		radeon_dig_connector->dp_sink_type = CONNECTOR_OBJECT_ID_DISPLAYPORT;
		if (!radeon_dig_connector->edp_on)
			FUNC0(connector,
						     ATOM_TRANSMITTER_ACTION_POWER_ON);
		if (FUNC8(radeon_connector))
			ret = connector_status_connected;
		if (!radeon_dig_connector->edp_on)
			FUNC0(connector,
						     ATOM_TRANSMITTER_ACTION_POWER_OFF);
	} else if (FUNC5(connector) !=
		   ENCODER_OBJECT_ID_NONE) {
		/* DP bridges are always DP */
		radeon_dig_connector->dp_sink_type = CONNECTOR_OBJECT_ID_DISPLAYPORT;
		/* get the DPCD from the bridge */
		FUNC8(radeon_connector);

		if (encoder) {
			/* setup ddc on the bridge */
			FUNC2(encoder);
			/* bridge chips are always aux */
			if (FUNC7(radeon_connector, true)) /* try DDC */
				ret = connector_status_connected;
			else if (radeon_connector->dac_load_detect) { /* try load detection */
				struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;
				ret = encoder_funcs->detect(encoder, connector);
			}
		}
	} else {
		radeon_dig_connector->dp_sink_type = FUNC9(radeon_connector);
		if (FUNC10(rdev, radeon_connector->hpd.hpd)) {
			ret = connector_status_connected;
			if (radeon_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT)
				FUNC8(radeon_connector);
		} else {
			if (radeon_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) {
				if (FUNC8(radeon_connector))
					ret = connector_status_connected;
			} else {
				/* try non-aux ddc (DP to DVI/HMDI/etc. adapter) */
				if (FUNC7(radeon_connector, false))
					ret = connector_status_connected;
			}
		}
	}

	FUNC6(connector, ret);
	return ret;
}