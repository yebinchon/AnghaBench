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
struct radeon_encoder_atom_dig {int /*<<< orphan*/  panel_mode; } ;
struct radeon_encoder {int devices; struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int /*<<< orphan*/  family; } ;
struct radeon_connector_atom_dig {int edp_on; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int /*<<< orphan*/  connector_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_DP_VIDEO_OFF ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_DP_VIDEO_ON ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_SETUP ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_SETUP_PANEL_MODE ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_DISABLE ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_DISABLE_OUTPUT ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_ENABLE ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_ENABLE_OUTPUT ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_LCD_BLOFF ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_LCD_BLON ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_OFF ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_POWER_ON ; 
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_SETUP ; 
 int /*<<< orphan*/  CHIP_RV710 ; 
 int /*<<< orphan*/  CHIP_RV730 ; 
 int /*<<< orphan*/  DP_PANEL_MODE_EXTERNAL_DP_MODE ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_eDP ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_encoder*,struct drm_connector*) ; 
 struct drm_connector* FUNC12 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC13 (struct drm_encoder*) ; 
 struct radeon_connector* FUNC14 (struct drm_connector*) ; 
 struct radeon_encoder* FUNC15 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC16(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC15(encoder);
	struct drm_encoder *ext_encoder = FUNC13(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	struct drm_connector *connector = FUNC12(encoder);
	struct radeon_connector *radeon_connector = NULL;
	struct radeon_connector_atom_dig *radeon_dig_connector = NULL;

	if (connector) {
		radeon_connector = FUNC14(connector);
		radeon_dig_connector = radeon_connector->con_priv;
	}

	switch (mode) {
	case DRM_MODE_DPMS_ON:
		if (FUNC1(rdev) || FUNC2(rdev)) {
			if (!connector)
				dig->panel_mode = DP_PANEL_MODE_EXTERNAL_DP_MODE;
			else
				dig->panel_mode = FUNC10(encoder, connector);

			/* setup and enable the encoder */
			FUNC5(encoder, ATOM_ENCODER_CMD_SETUP, 0);
			FUNC5(encoder,
						   ATOM_ENCODER_CMD_SETUP_PANEL_MODE,
						   dig->panel_mode);
			if (ext_encoder) {
				if (FUNC1(rdev) || FUNC3(rdev))
					FUNC7(encoder, ext_encoder,
									EXTERNAL_ENCODER_ACTION_V3_ENCODER_SETUP);
			}
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_ENABLE, 0, 0);
		} else if (FUNC0(rdev)) {
			/* setup and enable the encoder */
			FUNC5(encoder, ATOM_ENCODER_CMD_SETUP, 0);
			/* enable the transmitter */
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_ENABLE, 0, 0);
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_ENABLE_OUTPUT, 0, 0);
		} else {
			/* setup and enable the encoder and transmitter */
			FUNC5(encoder, ATOM_ENABLE, 0);
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_SETUP, 0, 0);
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_ENABLE, 0, 0);
			/* some early dce3.2 boards have a bug in their transmitter control table */
			if ((rdev->family != CHIP_RV710) && (rdev->family != CHIP_RV730))
				FUNC6(encoder, ATOM_TRANSMITTER_ACTION_ENABLE_OUTPUT, 0, 0);
		}
		if (FUNC4(FUNC8(encoder)) && connector) {
			if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
				FUNC9(connector,
							     ATOM_TRANSMITTER_ACTION_POWER_ON);
				radeon_dig_connector->edp_on = true;
			}
			FUNC11(encoder, connector);
			if (FUNC0(rdev))
				FUNC5(encoder, ATOM_ENCODER_CMD_DP_VIDEO_ON, 0);
		}
		if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_LCD_BLON, 0, 0);
		break;
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
	case DRM_MODE_DPMS_OFF:
		if (FUNC1(rdev) || FUNC2(rdev)) {
			/* disable the transmitter */
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_DISABLE, 0, 0);
		} else if (FUNC0(rdev)) {
			/* disable the transmitter */
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_DISABLE_OUTPUT, 0, 0);
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_DISABLE, 0, 0);
		} else {
			/* disable the encoder and transmitter */
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_DISABLE_OUTPUT, 0, 0);
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_DISABLE, 0, 0);
			FUNC5(encoder, ATOM_DISABLE, 0);
		}
		if (FUNC4(FUNC8(encoder)) && connector) {
			if (FUNC0(rdev))
				FUNC5(encoder, ATOM_ENCODER_CMD_DP_VIDEO_OFF, 0);
			if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
				FUNC9(connector,
							     ATOM_TRANSMITTER_ACTION_POWER_OFF);
				radeon_dig_connector->edp_on = false;
			}
		}
		if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
			FUNC6(encoder, ATOM_TRANSMITTER_ACTION_LCD_BLOFF, 0, 0);
		break;
	}
}