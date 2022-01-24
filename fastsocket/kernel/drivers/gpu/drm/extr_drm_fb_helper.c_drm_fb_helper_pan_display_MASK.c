#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fb_var_screeninfo {int /*<<< orphan*/  yoffset; int /*<<< orphan*/  xoffset; } ;
struct TYPE_4__ {int /*<<< orphan*/  yoffset; int /*<<< orphan*/  xoffset; } ;
struct fb_info {TYPE_2__ var; struct drm_fb_helper* par; } ;
struct drm_mode_set {scalar_t__ num_connectors; int /*<<< orphan*/  y; int /*<<< orphan*/  x; struct drm_crtc* crtc; } ;
struct drm_fb_helper {int crtc_count; TYPE_1__* crtc_info; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {struct drm_mode_set mode_set; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct drm_fb_helper*) ; 
 int FUNC1 (struct drm_mode_set*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

int FUNC4(struct fb_var_screeninfo *var,
			      struct fb_info *info)
{
	struct drm_fb_helper *fb_helper = info->par;
	struct drm_device *dev = fb_helper->dev;
	struct drm_mode_set *modeset;
	struct drm_crtc *crtc;
	int ret = 0;
	int i;

	FUNC2(dev);
	if (!FUNC0(fb_helper)) {
		FUNC3(dev);
		return -EBUSY;
	}

	for (i = 0; i < fb_helper->crtc_count; i++) {
		crtc = fb_helper->crtc_info[i].mode_set.crtc;

		modeset = &fb_helper->crtc_info[i].mode_set;

		modeset->x = var->xoffset;
		modeset->y = var->yoffset;

		if (modeset->num_connectors) {
			ret = FUNC1(modeset);
			if (!ret) {
				info->var.xoffset = var->xoffset;
				info->var.yoffset = var->yoffset;
			}
		}
	}
	FUNC3(dev);
	return ret;
}