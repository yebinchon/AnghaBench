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
struct intel_connector {scalar_t__ edid; } ;
struct i2c_adapter {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (struct drm_connector*,scalar_t__) ; 
 int FUNC2 (struct drm_connector*,struct i2c_adapter*) ; 
 struct intel_connector* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC4(struct drm_connector *connector, struct i2c_adapter *adapter)
{
	struct intel_connector *intel_connector = FUNC3(connector);

	/* use cached edid if we have one */
	if (intel_connector->edid) {
		/* invalid edid */
		if (FUNC0(intel_connector->edid))
			return 0;

		return FUNC1(connector,
						    intel_connector->edid);
	}

	return FUNC2(connector, adapter);
}