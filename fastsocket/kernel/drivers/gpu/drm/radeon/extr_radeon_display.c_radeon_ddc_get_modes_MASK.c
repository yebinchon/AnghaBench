#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct radeon_device {scalar_t__ is_atom_bios; } ;
struct radeon_connector_atom_dig {scalar_t__ dp_sink_type; TYPE_2__* dp_i2c_bus; } ;
struct TYPE_11__ {scalar_t__ connector_type; struct drm_device* dev; } ;
struct TYPE_8__ {scalar_t__ ddc_valid; } ;
struct radeon_connector {TYPE_4__ base; int /*<<< orphan*/ * edid; TYPE_3__* ddc_bus; struct radeon_connector_atom_dig* con_priv; TYPE_1__ router; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_10__ {int /*<<< orphan*/  adapter; } ;
struct TYPE_9__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ; 
 scalar_t__ CONNECTOR_OBJECT_ID_eDP ; 
 scalar_t__ DRM_MODE_CONNECTOR_DisplayPort ; 
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct radeon_device*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_connector*) ; 

int FUNC6(struct radeon_connector *radeon_connector)
{
	struct drm_device *dev = radeon_connector->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	int ret = 0;

	/* on hw with routers, select right port */
	if (radeon_connector->router.ddc_valid)
		FUNC5(radeon_connector);

	if (FUNC4(&radeon_connector->base) !=
	    ENCODER_OBJECT_ID_NONE) {
		struct radeon_connector_atom_dig *dig = radeon_connector->con_priv;

		if (dig->dp_i2c_bus)
			radeon_connector->edid = FUNC1(&radeon_connector->base,
							      &dig->dp_i2c_bus->adapter);
	} else if ((radeon_connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort) ||
		   (radeon_connector->base.connector_type == DRM_MODE_CONNECTOR_eDP)) {
		struct radeon_connector_atom_dig *dig = radeon_connector->con_priv;

		if ((dig->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT ||
		     dig->dp_sink_type == CONNECTOR_OBJECT_ID_eDP) && dig->dp_i2c_bus)
			radeon_connector->edid = FUNC1(&radeon_connector->base,
							      &dig->dp_i2c_bus->adapter);
		else if (radeon_connector->ddc_bus && !radeon_connector->edid)
			radeon_connector->edid = FUNC1(&radeon_connector->base,
							      &radeon_connector->ddc_bus->adapter);
	} else {
		if (radeon_connector->ddc_bus && !radeon_connector->edid)
			radeon_connector->edid = FUNC1(&radeon_connector->base,
							      &radeon_connector->ddc_bus->adapter);
	}

	if (!radeon_connector->edid) {
		if (rdev->is_atom_bios) {
			/* some laptops provide a hardcoded edid in rom for LCDs */
			if (((radeon_connector->base.connector_type == DRM_MODE_CONNECTOR_LVDS) ||
			     (radeon_connector->base.connector_type == DRM_MODE_CONNECTOR_eDP)))
				radeon_connector->edid = FUNC3(rdev);
		} else
			/* some servers provide a hardcoded edid in rom for KVMs */
			radeon_connector->edid = FUNC3(rdev);
	}
	if (radeon_connector->edid) {
		FUNC2(&radeon_connector->base, radeon_connector->edid);
		ret = FUNC0(&radeon_connector->base, radeon_connector->edid);
		return ret;
	}
	FUNC2(&radeon_connector->base, NULL);
	return 0;
}