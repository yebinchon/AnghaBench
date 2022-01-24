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
struct intel_dp {int /*<<< orphan*/  panel_vdd_work; int /*<<< orphan*/  adapter; } ;
struct intel_digital_port {struct intel_dp dp; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 struct intel_digital_port* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 scalar_t__ FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct drm_encoder *encoder)
{
	struct intel_digital_port *intel_dig_port = FUNC2(encoder);
	struct intel_dp *intel_dp = &intel_dig_port->dp;
	struct drm_device *dev = FUNC4(intel_dp);

	FUNC3(&intel_dp->adapter);
	FUNC1(encoder);
	if (FUNC6(intel_dp)) {
		FUNC0(&intel_dp->panel_vdd_work);
		FUNC8(&dev->mode_config.mutex);
		FUNC5(intel_dp);
		FUNC9(&dev->mode_config.mutex);
	}
	FUNC7(intel_dig_port);
}