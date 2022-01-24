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
struct intel_hdmi {int /*<<< orphan*/  ddc_bus; } ;
struct edid {int input; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int DRM_EDID_INPUT_DIGITAL ; 
 int FUNC0 (struct edid*) ; 
 struct edid* FUNC1 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 struct intel_hdmi* FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct edid*) ; 

__attribute__((used)) static bool
FUNC5(struct drm_connector *connector)
{
	struct intel_hdmi *intel_hdmi = FUNC2(connector);
	struct drm_i915_private *dev_priv = connector->dev->dev_private;
	struct edid *edid;
	bool has_audio = false;

	edid = FUNC1(connector,
			    FUNC3(dev_priv,
						    intel_hdmi->ddc_bus));
	if (edid) {
		if (edid->input & DRM_EDID_INPUT_DIGITAL)
			has_audio = FUNC0(edid);
		FUNC4(edid);
	}

	return has_audio;
}