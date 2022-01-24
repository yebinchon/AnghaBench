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
struct drm_i915_private {int dummy; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 struct intel_hdmi* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector)
{
	struct intel_hdmi *intel_hdmi = FUNC0(connector);
	struct drm_i915_private *dev_priv = connector->dev->dev_private;

	/* We should parse the EDID data and find out if it's an HDMI sink so
	 * we can send audio to it.
	 */

	return FUNC1(connector,
				   FUNC2(dev_priv,
							   intel_hdmi->ddc_bus));
}