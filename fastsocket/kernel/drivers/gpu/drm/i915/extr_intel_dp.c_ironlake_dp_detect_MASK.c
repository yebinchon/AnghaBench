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
struct intel_dp {int dummy; } ;
struct intel_digital_port {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 struct intel_digital_port* FUNC0 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct intel_digital_port*) ; 
 int FUNC2 (struct intel_dp*) ; 
 struct drm_device* FUNC3 (struct intel_dp*) ; 
 int FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct intel_dp*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC6(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC3(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_digital_port *intel_dig_port = FUNC0(intel_dp);
	enum drm_connector_status status;

	/* Can't disconnect eDP, but you can close the lid... */
	if (FUNC5(intel_dp)) {
		status = FUNC4(dev);
		if (status == connector_status_unknown)
			status = connector_status_connected;
		return status;
	}

	if (!FUNC1(dev_priv, intel_dig_port))
		return connector_status_disconnected;

	return FUNC2(intel_dp);
}