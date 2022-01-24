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
struct intel_tv {int type; } ;
struct intel_load_detect_pipe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int status; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 struct intel_tv* FUNC0 (struct drm_connector*) ; 
 scalar_t__ FUNC1 (struct drm_connector*,struct drm_display_mode*,struct intel_load_detect_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct intel_load_detect_pipe*) ; 
 int FUNC3 (struct intel_tv*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 struct drm_display_mode* reported_modes ; 

__attribute__((used)) static enum drm_connector_status
FUNC5(struct drm_connector *connector, bool force)
{
	struct drm_display_mode mode;
	struct intel_tv *intel_tv = FUNC0(connector);
	int type;

	mode = reported_modes[0];

	if (force) {
		struct intel_load_detect_pipe tmp;

		if (FUNC1(connector, &mode, &tmp)) {
			type = FUNC3(intel_tv, connector);
			FUNC2(connector, &tmp);
		} else
			return connector_status_unknown;
	} else
		return connector->status;

	if (type < 0)
		return connector_status_disconnected;

	intel_tv->type = type;
	FUNC4(connector);

	return connector_status_connected;
}