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
typedef  void* uint64_t ;
struct nv17_tv_norm_params {scalar_t__ kind; } ;
struct nv17_tv_encoder {void* select_subconnector; void* tv_norm; void* flicker; void* hue; void* saturation; void* overscan; } ;
struct drm_property {int dummy; } ;
struct drm_mode_set {struct drm_crtc* crtc; } ;
struct drm_mode_config {struct drm_property* tv_select_subconnector_property; struct drm_property* tv_mode_property; struct drm_property* tv_flicker_reduction_property; struct drm_property* tv_hue_property; struct drm_property* tv_saturation_property; struct drm_property* tv_overscan_property; } ;
struct drm_encoder {struct drm_crtc* crtc; TYPE_1__* dev; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {scalar_t__ dpms; } ;
struct TYPE_2__ {struct drm_mode_config mode_config; } ;

/* Variables and functions */
 scalar_t__ CTV_ENC_MODE ; 
 scalar_t__ DRM_MODE_DPMS_OFF ; 
 int EINVAL ; 
 scalar_t__ TV_ENC_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mode_set*) ; 
 struct nv17_tv_norm_params* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*) ; 
 struct nv17_tv_encoder* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static int FUNC7(struct drm_encoder *encoder,
				struct drm_connector *connector,
				struct drm_property *property,
				uint64_t val)
{
	struct drm_mode_config *conf = &encoder->dev->mode_config;
	struct drm_crtc *crtc = encoder->crtc;
	struct nv17_tv_encoder *tv_enc = FUNC6(encoder);
	struct nv17_tv_norm_params *tv_norm = FUNC2(encoder);
	bool modes_changed = false;

	if (property == conf->tv_overscan_property) {
		tv_enc->overscan = val;
		if (encoder->crtc) {
			if (tv_norm->kind == CTV_ENC_MODE)
				FUNC3(encoder);
			else
				FUNC5(encoder);
		}

	} else if (property == conf->tv_saturation_property) {
		if (tv_norm->kind != TV_ENC_MODE)
			return -EINVAL;

		tv_enc->saturation = val;
		FUNC4(encoder);

	} else if (property == conf->tv_hue_property) {
		if (tv_norm->kind != TV_ENC_MODE)
			return -EINVAL;

		tv_enc->hue = val;
		FUNC4(encoder);

	} else if (property == conf->tv_flicker_reduction_property) {
		if (tv_norm->kind != TV_ENC_MODE)
			return -EINVAL;

		tv_enc->flicker = val;
		if (encoder->crtc)
			FUNC5(encoder);

	} else if (property == conf->tv_mode_property) {
		if (connector->dpms != DRM_MODE_DPMS_OFF)
			return -EINVAL;

		tv_enc->tv_norm = val;

		modes_changed = true;

	} else if (property == conf->tv_select_subconnector_property) {
		if (tv_norm->kind != TV_ENC_MODE)
			return -EINVAL;

		tv_enc->select_subconnector = val;
		FUNC4(encoder);

	} else {
		return -EINVAL;
	}

	if (modes_changed) {
		FUNC0(connector, 0, 0);

		/* Disable the crtc to ensure a full modeset is
		 * performed whenever it's turned on again. */
		if (crtc) {
			struct drm_mode_set modeset = {
				.crtc = crtc,
			};

			FUNC1(&modeset);
		}
	}

	return 0;
}