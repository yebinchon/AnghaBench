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
struct intel_load_detect_pipe {int dummy; } ;
struct intel_crt {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int status; struct drm_device* dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 struct intel_crt* FUNC2 (struct drm_connector*) ; 
 scalar_t__ FUNC3 (struct drm_connector*) ; 
 scalar_t__ FUNC4 (struct drm_connector*) ; 
 int FUNC5 (struct intel_crt*) ; 
 scalar_t__ FUNC6 (struct drm_connector*,int /*<<< orphan*/ *,struct intel_load_detect_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*,struct intel_load_detect_pipe*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC8(struct drm_connector *connector, bool force)
{
	struct drm_device *dev = connector->dev;
	struct intel_crt *crt = FUNC2(connector);
	enum drm_connector_status status;
	struct intel_load_detect_pipe tmp;

	if (FUNC1(dev)) {
		/* We can not rely on the HPD pin always being correctly wired
		 * up, for example many KVM do not pass it through, and so
		 * only trust an assertion that the monitor is connected.
		 */
		if (FUNC4(connector)) {
			FUNC0("CRT detected via hotplug\n");
			return connector_status_connected;
		} else
			FUNC0("CRT not detected via hotplug\n");
	}

	if (FUNC3(connector))
		return connector_status_connected;

	/* Load detection is broken on HPD capable machines. Whoever wants a
	 * broken monitor (without edid) to work behind a broken kvm (that fails
	 * to have the right resistors for HP detection) needs to fix this up.
	 * For now just bail out. */
	if (FUNC1(dev))
		return connector_status_disconnected;

	if (!force)
		return connector->status;

	/* for pre-945g platforms use load detect */
	if (FUNC6(connector, NULL, &tmp)) {
		if (FUNC3(connector))
			status = connector_status_connected;
		else
			status = FUNC5(crt);
		FUNC7(connector, &tmp);
	} else
		status = connector_status_unknown;

	return status;
}