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
struct intel_dp {int /*<<< orphan*/  adapter; } ;
struct TYPE_2__ {scalar_t__ fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 struct drm_display_mode* FUNC0 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 
 struct intel_dp* FUNC2 (struct drm_connector*) ; 
 int FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct intel_dp*) ; 
 struct intel_connector* FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	struct intel_dp *intel_dp = FUNC2(connector);
	struct intel_connector *intel_connector = FUNC5(connector);
	struct drm_device *dev = connector->dev;
	int ret;

	/* We should parse the EDID data and find out if it has an audio sink
	 */

	ret = FUNC3(connector, &intel_dp->adapter);
	if (ret)
		return ret;

	/* if eDP has no EDID, fall back to fixed mode */
	if (FUNC4(intel_dp) && intel_connector->panel.fixed_mode) {
		struct drm_display_mode *mode;
		mode = FUNC0(dev,
					  intel_connector->panel.fixed_mode);
		if (mode) {
			FUNC1(connector, mode);
			return 1;
		}
	}
	return 0;
}