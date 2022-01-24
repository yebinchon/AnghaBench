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
struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* dirty_info_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_PROP_IMMUTABLE ; 
 int /*<<< orphan*/  drm_dirty_info_enum_list ; 
 struct drm_property* FUNC1 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_device *dev)
{
	struct drm_property *dirty_info;

	if (dev->mode_config.dirty_info_property)
		return 0;

	dirty_info =
		FUNC1(dev, DRM_MODE_PROP_IMMUTABLE,
				    "dirty",
				    drm_dirty_info_enum_list,
				    FUNC0(drm_dirty_info_enum_list));
	dev->mode_config.dirty_info_property = dirty_info;

	return 0;
}