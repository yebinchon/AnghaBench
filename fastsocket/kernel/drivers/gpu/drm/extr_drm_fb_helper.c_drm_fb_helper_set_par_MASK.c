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
struct fb_var_screeninfo {scalar_t__ pixclock; } ;
struct fb_info {struct fb_var_screeninfo var; struct drm_fb_helper* par; } ;
struct drm_fb_helper {int crtc_count; int delayed_hotplug; TYPE_1__* crtc_info; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

int FUNC5(struct fb_info *info)
{
	struct drm_fb_helper *fb_helper = info->par;
	struct drm_device *dev = fb_helper->dev;
	struct fb_var_screeninfo *var = &info->var;
	int ret;
	int i;

	if (var->pixclock != 0) {
		FUNC0("PIXEL CLOCK SET\n");
		return -EINVAL;
	}

	FUNC3(dev);
	for (i = 0; i < fb_helper->crtc_count; i++) {
		ret = FUNC2(&fb_helper->crtc_info[i].mode_set);
		if (ret) {
			FUNC4(dev);
			return ret;
		}
	}
	FUNC4(dev);

	if (fb_helper->delayed_hotplug) {
		fb_helper->delayed_hotplug = false;
		FUNC1(fb_helper);
	}
	return 0;
}