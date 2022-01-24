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
struct intel_dvo {int /*<<< orphan*/ * panel_fixed_mode; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {TYPE_1__* dev; int /*<<< orphan*/  probed_modes; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMBUS_PORT_DPC ; 
 struct drm_display_mode* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 
 struct intel_dvo* FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	struct intel_dvo *intel_dvo = FUNC2(connector);
	struct drm_i915_private *dev_priv = connector->dev->dev_private;

	/* We should probably have an i2c driver get_modes function for those
	 * devices which will have a fixed set of modes determined by the chip
	 * (TV-out, for example), but for now with just TMDS and LVDS,
	 * that's not the case.
	 */
	FUNC3(connector,
			    FUNC4(dev_priv, GMBUS_PORT_DPC));
	if (!FUNC5(&connector->probed_modes))
		return 1;

	if (intel_dvo->panel_fixed_mode != NULL) {
		struct drm_display_mode *mode;
		mode = FUNC0(connector->dev, intel_dvo->panel_fixed_mode);
		if (mode) {
			FUNC1(connector, mode);
			return 1;
		}
	}

	return 0;
}