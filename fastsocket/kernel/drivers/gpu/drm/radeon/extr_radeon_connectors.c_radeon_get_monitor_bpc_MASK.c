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
struct radeon_encoder_atom_dig {int lcd_misc; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {int /*<<< orphan*/  dp_sink_type; } ;
struct radeon_connector {int /*<<< orphan*/  edid; struct radeon_connector_atom_dig* con_priv; int /*<<< orphan*/  use_digital; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (struct drm_connector*) ;} ;
struct TYPE_2__ {int bpc; } ;
struct drm_connector {int connector_type; struct drm_connector_helper_funcs* helper_private; TYPE_1__ display_info; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int ATOM_PANEL_MISC_V13_6BIT_PER_COLOR ; 
 int ATOM_PANEL_MISC_V13_8BIT_PER_COLOR ; 
 int /*<<< orphan*/  CONNECTOR_OBJECT_ID_DISPLAYPORT ; 
 int /*<<< orphan*/  CONNECTOR_OBJECT_ID_eDP ; 
#define  DRM_MODE_CONNECTOR_DVID 134 
#define  DRM_MODE_CONNECTOR_DVII 133 
#define  DRM_MODE_CONNECTOR_DisplayPort 132 
#define  DRM_MODE_CONNECTOR_HDMIA 131 
#define  DRM_MODE_CONNECTOR_HDMIB 130 
#define  DRM_MODE_CONNECTOR_LVDS 129 
#define  DRM_MODE_CONNECTOR_eDP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC3 (struct drm_connector*) ; 
 struct radeon_connector* FUNC4 (struct drm_connector*) ; 
 struct radeon_encoder* FUNC5 (struct drm_encoder*) ; 

int FUNC6(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_connector *radeon_connector = FUNC4(connector);
	struct radeon_connector_atom_dig *dig_connector;
	int bpc = 8;

	switch (connector->connector_type) {
	case DRM_MODE_CONNECTOR_DVII:
	case DRM_MODE_CONNECTOR_HDMIB:
		if (radeon_connector->use_digital) {
			if (FUNC2(radeon_connector->edid)) {
				if (connector->display_info.bpc)
					bpc = connector->display_info.bpc;
			}
		}
		break;
	case DRM_MODE_CONNECTOR_DVID:
	case DRM_MODE_CONNECTOR_HDMIA:
		if (FUNC2(radeon_connector->edid)) {
			if (connector->display_info.bpc)
				bpc = connector->display_info.bpc;
		}
		break;
	case DRM_MODE_CONNECTOR_DisplayPort:
		dig_connector = radeon_connector->con_priv;
		if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
		    (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP) ||
		    FUNC2(radeon_connector->edid)) {
			if (connector->display_info.bpc)
				bpc = connector->display_info.bpc;
		}
		break;
	case DRM_MODE_CONNECTOR_eDP:
	case DRM_MODE_CONNECTOR_LVDS:
		if (connector->display_info.bpc)
			bpc = connector->display_info.bpc;
		else if (FUNC0(rdev) || FUNC1(rdev)) {
			struct drm_connector_helper_funcs *connector_funcs =
				connector->helper_private;
			struct drm_encoder *encoder = connector_funcs->best_encoder(connector);
			struct radeon_encoder *radeon_encoder = FUNC5(encoder);
			struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;

			if (dig->lcd_misc & ATOM_PANEL_MISC_V13_6BIT_PER_COLOR)
				bpc = 6;
			else if (dig->lcd_misc & ATOM_PANEL_MISC_V13_8BIT_PER_COLOR)
				bpc = 8;
		}
		break;
	}
	return bpc;
}