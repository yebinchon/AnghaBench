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
struct drm_mode_config {int /*<<< orphan*/  tv_flicker_reduction_property; int /*<<< orphan*/  tv_contrast_property; int /*<<< orphan*/  tv_brightness_property; int /*<<< orphan*/  tv_mode_property; int /*<<< orphan*/  tv_bottom_margin_property; int /*<<< orphan*/  tv_left_margin_property; int /*<<< orphan*/  tv_subconnector_property; int /*<<< orphan*/  tv_select_subconnector_property; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_connector {int /*<<< orphan*/  base; } ;
struct ch7006_priv {int /*<<< orphan*/  scale; int /*<<< orphan*/  scale_property; int /*<<< orphan*/  flicker; int /*<<< orphan*/  contrast; int /*<<< orphan*/  brightness; int /*<<< orphan*/  norm; int /*<<< orphan*/  vmargin; int /*<<< orphan*/  hmargin; int /*<<< orphan*/  subconnector; int /*<<< orphan*/  select_subconnector; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_TV_NORMS ; 
 int /*<<< orphan*/  ch7006_tv_norm_names ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct ch7006_priv* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static int FUNC4(struct drm_encoder *encoder,
					   struct drm_connector *connector)
{
	struct ch7006_priv *priv = FUNC3(encoder);
	struct drm_device *dev = encoder->dev;
	struct drm_mode_config *conf = &dev->mode_config;

	FUNC0(dev, NUM_TV_NORMS, ch7006_tv_norm_names);

	priv->scale_property = FUNC2(dev, 0, "scale", 0, 2);

	FUNC1(&connector->base, conf->tv_select_subconnector_property,
				      priv->select_subconnector);
	FUNC1(&connector->base, conf->tv_subconnector_property,
				      priv->subconnector);
	FUNC1(&connector->base, conf->tv_left_margin_property,
				      priv->hmargin);
	FUNC1(&connector->base, conf->tv_bottom_margin_property,
				      priv->vmargin);
	FUNC1(&connector->base, conf->tv_mode_property,
				      priv->norm);
	FUNC1(&connector->base, conf->tv_brightness_property,
				      priv->brightness);
	FUNC1(&connector->base, conf->tv_contrast_property,
				      priv->contrast);
	FUNC1(&connector->base, conf->tv_flicker_reduction_property,
				      priv->flicker);
	FUNC1(&connector->base, priv->scale_property,
				      priv->scale);

	return 0;
}