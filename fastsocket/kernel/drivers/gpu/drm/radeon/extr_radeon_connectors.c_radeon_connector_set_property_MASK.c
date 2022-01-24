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
typedef  int uint64_t ;
struct radeon_encoder_tv_dac {int coherent_mode; int tv_std; } ;
struct radeon_encoder_int_tmds {int coherent_mode; int tv_std; } ;
struct radeon_encoder_atom_dig {int coherent_mode; int tv_std; } ;
struct radeon_encoder_atom_dac {int coherent_mode; int tv_std; } ;
struct radeon_encoder {int underscan_type; int underscan_hborder; int underscan_vborder; int /*<<< orphan*/  base; struct radeon_encoder_tv_dac* enc_priv; } ;
struct TYPE_2__ {struct drm_property* tmds_pll_property; struct drm_property* load_detect_property; struct drm_property* tv_std_property; struct drm_property* underscan_vborder_property; struct drm_property* underscan_hborder_property; struct drm_property* underscan_property; struct drm_property* coherent_mode_property; } ;
struct radeon_device {scalar_t__ is_atom_bios; TYPE_1__ mode_info; } ;
struct radeon_connector {int dac_load_detect; } ;
struct drm_property {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DAC ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TVDAC ; 
 int FUNC1 (struct radeon_encoder*,struct radeon_encoder_tv_dac*) ; 
 struct drm_encoder* FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_encoder*,struct radeon_encoder_tv_dac*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_encoder*,struct radeon_encoder_tv_dac*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ radeon_r4xx_atom ; 
 struct radeon_connector* FUNC6 (struct drm_connector*) ; 
 struct radeon_encoder* FUNC7 (struct drm_encoder*) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector, struct drm_property *property,
				  uint64_t val)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct drm_encoder *encoder;
	struct radeon_encoder *radeon_encoder;

	if (property == rdev->mode_info.coherent_mode_property) {
		struct radeon_encoder_atom_dig *dig;
		bool new_coherent_mode;

		/* need to find digital encoder on connector */
		encoder = FUNC2(connector, DRM_MODE_ENCODER_TMDS);
		if (!encoder)
			return 0;

		radeon_encoder = FUNC7(encoder);

		if (!radeon_encoder->enc_priv)
			return 0;

		dig = radeon_encoder->enc_priv;
		new_coherent_mode = val ? true : false;
		if (dig->coherent_mode != new_coherent_mode) {
			dig->coherent_mode = new_coherent_mode;
			FUNC5(&radeon_encoder->base);
		}
	}

	if (property == rdev->mode_info.underscan_property) {
		/* need to find digital encoder on connector */
		encoder = FUNC2(connector, DRM_MODE_ENCODER_TMDS);
		if (!encoder)
			return 0;

		radeon_encoder = FUNC7(encoder);

		if (radeon_encoder->underscan_type != val) {
			radeon_encoder->underscan_type = val;
			FUNC5(&radeon_encoder->base);
		}
	}

	if (property == rdev->mode_info.underscan_hborder_property) {
		/* need to find digital encoder on connector */
		encoder = FUNC2(connector, DRM_MODE_ENCODER_TMDS);
		if (!encoder)
			return 0;

		radeon_encoder = FUNC7(encoder);

		if (radeon_encoder->underscan_hborder != val) {
			radeon_encoder->underscan_hborder = val;
			FUNC5(&radeon_encoder->base);
		}
	}

	if (property == rdev->mode_info.underscan_vborder_property) {
		/* need to find digital encoder on connector */
		encoder = FUNC2(connector, DRM_MODE_ENCODER_TMDS);
		if (!encoder)
			return 0;

		radeon_encoder = FUNC7(encoder);

		if (radeon_encoder->underscan_vborder != val) {
			radeon_encoder->underscan_vborder = val;
			FUNC5(&radeon_encoder->base);
		}
	}

	if (property == rdev->mode_info.tv_std_property) {
		encoder = FUNC2(connector, DRM_MODE_ENCODER_TVDAC);
		if (!encoder) {
			encoder = FUNC2(connector, DRM_MODE_ENCODER_DAC);
		}

		if (!encoder)
			return 0;

		radeon_encoder = FUNC7(encoder);
		if (!radeon_encoder->enc_priv)
			return 0;
		if (FUNC0(rdev) || radeon_r4xx_atom) {
			struct radeon_encoder_atom_dac *dac_int;
			dac_int = radeon_encoder->enc_priv;
			dac_int->tv_std = val;
		} else {
			struct radeon_encoder_tv_dac *dac_int;
			dac_int = radeon_encoder->enc_priv;
			dac_int->tv_std = val;
		}
		FUNC5(&radeon_encoder->base);
	}

	if (property == rdev->mode_info.load_detect_property) {
		struct radeon_connector *radeon_connector =
			FUNC6(connector);

		if (val == 0)
			radeon_connector->dac_load_detect = false;
		else
			radeon_connector->dac_load_detect = true;
	}

	if (property == rdev->mode_info.tmds_pll_property) {
		struct radeon_encoder_int_tmds *tmds = NULL;
		bool ret = false;
		/* need to find digital encoder on connector */
		encoder = FUNC2(connector, DRM_MODE_ENCODER_TMDS);
		if (!encoder)
			return 0;

		radeon_encoder = FUNC7(encoder);

		tmds = radeon_encoder->enc_priv;
		if (!tmds)
			return 0;

		if (val == 0) {
			if (rdev->is_atom_bios)
				ret = FUNC1(radeon_encoder, tmds);
			else
				ret = FUNC3(radeon_encoder, tmds);
		}
		if (val == 1 || ret == false) {
			FUNC4(radeon_encoder, tmds);
		}
		FUNC5(&radeon_encoder->base);
	}

	return 0;
}