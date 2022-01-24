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
struct i2c_client {int dummy; } ;
struct drm_property {int dummy; } ;
struct drm_mode_set {struct drm_crtc* crtc; } ;
struct drm_mode_config {struct drm_property* tv_flicker_reduction_property; struct drm_property* tv_contrast_property; struct drm_property* tv_brightness_property; struct drm_property* tv_mode_property; struct drm_property* tv_bottom_margin_property; struct drm_property* tv_left_margin_property; struct drm_property* tv_select_subconnector_property; } ;
struct drm_encoder {struct drm_crtc* crtc; TYPE_1__* dev; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {scalar_t__ dpms; } ;
struct ch7006_state {int dummy; } ;
struct ch7006_priv {void* scale; struct drm_property* scale_property; void* flicker; void* contrast; void* brightness; void* norm; void* vmargin; void* hmargin; void* select_subconnector; struct ch7006_state state; } ;
struct TYPE_2__ {struct drm_mode_config mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH7006_BLACK_LEVEL ; 
 int /*<<< orphan*/  CH7006_CONTRAST ; 
 int /*<<< orphan*/  CH7006_FFILTER ; 
 int /*<<< orphan*/  CH7006_HPOS ; 
 int /*<<< orphan*/  CH7006_POV ; 
 int /*<<< orphan*/  CH7006_POWER ; 
 int /*<<< orphan*/  CH7006_VPOS ; 
 scalar_t__ DRM_MODE_DPMS_OFF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct ch7006_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_mode_set*) ; 
 struct ch7006_priv* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static int FUNC9(struct drm_encoder *encoder,
				       struct drm_connector *connector,
				       struct drm_property *property,
				       uint64_t val)
{
	struct i2c_client *client = FUNC6(encoder);
	struct ch7006_priv *priv = FUNC8(encoder);
	struct ch7006_state *state = &priv->state;
	struct drm_mode_config *conf = &encoder->dev->mode_config;
	struct drm_crtc *crtc = encoder->crtc;
	bool modes_changed = false;

	FUNC0(client, "\n");

	if (property == conf->tv_select_subconnector_property) {
		priv->select_subconnector = val;

		FUNC3(encoder);

		FUNC1(client, state, CH7006_POWER);

	} else if (property == conf->tv_left_margin_property) {
		priv->hmargin = val;

		FUNC4(encoder);

		FUNC1(client, state, CH7006_POV);
		FUNC1(client, state, CH7006_HPOS);

	} else if (property == conf->tv_bottom_margin_property) {
		priv->vmargin = val;

		FUNC4(encoder);

		FUNC1(client, state, CH7006_POV);
		FUNC1(client, state, CH7006_VPOS);

	} else if (property == conf->tv_mode_property) {
		if (connector->dpms != DRM_MODE_DPMS_OFF)
			return -EINVAL;

		priv->norm = val;

		modes_changed = true;

	} else if (property == conf->tv_brightness_property) {
		priv->brightness = val;

		FUNC2(encoder);

		FUNC1(client, state, CH7006_BLACK_LEVEL);

	} else if (property == conf->tv_contrast_property) {
		priv->contrast = val;

		FUNC4(encoder);

		FUNC1(client, state, CH7006_CONTRAST);

	} else if (property == conf->tv_flicker_reduction_property) {
		priv->flicker = val;

		FUNC4(encoder);

		FUNC1(client, state, CH7006_FFILTER);

	} else if (property == priv->scale_property) {
		if (connector->dpms != DRM_MODE_DPMS_OFF)
			return -EINVAL;

		priv->scale = val;

		modes_changed = true;

	} else {
		return -EINVAL;
	}

	if (modes_changed) {
		FUNC5(connector, 0, 0);

		/* Disable the crtc to ensure a full modeset is
		 * performed whenever it's turned on again. */
		if (crtc) {
			struct drm_mode_set modeset = {
				.crtc = crtc,
			};

			FUNC7(&modeset);
		}
	}

	return 0;
}