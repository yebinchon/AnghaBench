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
struct TYPE_2__ {int dp_extclk; } ;
struct radeon_device {TYPE_1__ clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct drm_connector*) ; 

bool FUNC2(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct radeon_device *rdev = dev->dev_private;

	if (FUNC0(rdev) &&
	    (rdev->clock.dp_extclk >= 53900) &&
	    FUNC1(connector)) {
		return true;
	}

	return false;
}