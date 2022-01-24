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
struct drm_encoder {int dummy; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_digital_port {int port; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int INTEL_OUTPUT_ANALOG ; 
 int INTEL_OUTPUT_DISPLAYPORT ; 
 int INTEL_OUTPUT_EDP ; 
 int INTEL_OUTPUT_HDMI ; 
 int INTEL_OUTPUT_UNKNOWN ; 
 int PORT_E ; 
 struct intel_digital_port* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static enum port FUNC3(struct intel_encoder *intel_encoder)
{
	struct drm_encoder *encoder = &intel_encoder->base;
	int type = intel_encoder->type;

	if (type == INTEL_OUTPUT_DISPLAYPORT || type == INTEL_OUTPUT_EDP ||
	    type == INTEL_OUTPUT_HDMI || type == INTEL_OUTPUT_UNKNOWN) {
		struct intel_digital_port *intel_dig_port =
			FUNC2(encoder);
		return intel_dig_port->port;

	} else if (type == INTEL_OUTPUT_ANALOG) {
		return PORT_E;

	} else {
		FUNC1("Invalid DDI encoder type %d\n", type);
		FUNC0();
	}
}