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
struct intel_encoder {scalar_t__ type; } ;
struct intel_dp {int has_audio; scalar_t__ force_audio; int /*<<< orphan*/  adapter; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct edid {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 scalar_t__ HDMI_AUDIO_AUTO ; 
 scalar_t__ HDMI_AUDIO_ON ; 
 scalar_t__ INTEL_OUTPUT_DISPLAYPORT ; 
 scalar_t__ INTEL_OUTPUT_EDP ; 
 int connector_status_connected ; 
 struct intel_digital_port* FUNC1 (struct intel_dp*) ; 
 int FUNC2 (struct edid*) ; 
 int FUNC3 (struct intel_dp*) ; 
 struct intel_dp* FUNC4 (struct drm_connector*) ; 
 struct edid* FUNC5 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct edid*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC9(struct drm_connector *connector, bool force)
{
	struct intel_dp *intel_dp = FUNC4(connector);
	struct intel_digital_port *intel_dig_port = FUNC1(intel_dp);
	struct intel_encoder *intel_encoder = &intel_dig_port->base;
	struct drm_device *dev = connector->dev;
	enum drm_connector_status status;
	struct edid *edid = NULL;

	intel_dp->has_audio = false;

	if (FUNC0(dev))
		status = FUNC7(intel_dp);
	else
		status = FUNC3(intel_dp);

	if (status != connector_status_connected)
		return status;

	FUNC6(intel_dp);

	if (intel_dp->force_audio != HDMI_AUDIO_AUTO) {
		intel_dp->has_audio = (intel_dp->force_audio == HDMI_AUDIO_ON);
	} else {
		edid = FUNC5(connector, &intel_dp->adapter);
		if (edid) {
			intel_dp->has_audio = FUNC2(edid);
			FUNC8(edid);
		}
	}

	if (intel_encoder->type != INTEL_OUTPUT_EDP)
		intel_encoder->type = INTEL_OUTPUT_DISPLAYPORT;
	return connector_status_connected;
}