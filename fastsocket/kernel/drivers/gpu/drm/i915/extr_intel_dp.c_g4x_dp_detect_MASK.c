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
typedef  int uint32_t ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {int port; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PORTB_HOTPLUG_LIVE_STATUS ; 
 int PORTC_HOTPLUG_LIVE_STATUS ; 
 int PORTD_HOTPLUG_LIVE_STATUS ; 
#define  PORT_B 130 
#define  PORT_C 129 
#define  PORT_D 128 
 int /*<<< orphan*/  PORT_HOTPLUG_STAT ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 struct intel_digital_port* FUNC1 (struct intel_dp*) ; 
 int FUNC2 (struct intel_dp*) ; 
 struct drm_device* FUNC3 (struct intel_dp*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC4(struct intel_dp *intel_dp)
{
	struct drm_device *dev = FUNC3(intel_dp);
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_digital_port *intel_dig_port = FUNC1(intel_dp);
	uint32_t bit;

	switch (intel_dig_port->port) {
	case PORT_B:
		bit = PORTB_HOTPLUG_LIVE_STATUS;
		break;
	case PORT_C:
		bit = PORTC_HOTPLUG_LIVE_STATUS;
		break;
	case PORT_D:
		bit = PORTD_HOTPLUG_LIVE_STATUS;
		break;
	default:
		return connector_status_unknown;
	}

	if ((FUNC0(PORT_HOTPLUG_STAT) & bit) == 0)
		return connector_status_disconnected;

	return FUNC2(intel_dp);
}