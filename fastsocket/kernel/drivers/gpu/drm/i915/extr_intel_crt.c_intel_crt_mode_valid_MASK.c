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
struct drm_display_mode {int flags; int clock; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_DBLSCAN ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_CLOCK_LOW ; 
 int MODE_NO_DBLESCAN ; 
 int MODE_OK ; 
 int FUNC2 (int,int,int) ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector,
				struct drm_display_mode *mode)
{
	struct drm_device *dev = connector->dev;

	int max_clock = 0;
	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return MODE_NO_DBLESCAN;

	if (mode->clock < 25000)
		return MODE_CLOCK_LOW;

	if (FUNC1(dev))
		max_clock = 350000;
	else
		max_clock = 400000;
	if (mode->clock > max_clock)
		return MODE_CLOCK_HIGH;

	/* The FDI receiver on LPT only supports 8bpc and only has 2 lanes. */
	if (FUNC0(dev) &&
	    (FUNC2(mode->clock, 270000, 24) > 2))
		return MODE_CLOCK_HIGH;

	return MODE_OK;
}