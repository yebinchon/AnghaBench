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
struct drm_property {int dummy; } ;
struct drm_i915_private {struct drm_property* force_audio_property; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {int /*<<< orphan*/  base; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_property*,int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC2 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  force_audio_names ; 

void
FUNC3(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_property *prop;

	prop = dev_priv->force_audio_property;
	if (prop == NULL) {
		prop = FUNC2(dev, 0,
					   "audio",
					   force_audio_names,
					   FUNC0(force_audio_names));
		if (prop == NULL)
			return;

		dev_priv->force_audio_property = prop;
	}
	FUNC1(&connector->base, prop, 0);
}