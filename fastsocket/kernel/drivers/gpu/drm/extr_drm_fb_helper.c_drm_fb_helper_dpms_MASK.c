#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {int crtc_count; int connector_count; TYPE_3__** connector_info; TYPE_2__* crtc_info; struct drm_device* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  dpms_property; } ;
struct drm_device {TYPE_5__ mode_config; } ;
struct drm_crtc {int /*<<< orphan*/  enabled; } ;
struct drm_connector {int /*<<< orphan*/  base; TYPE_4__* funcs; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* dpms ) (struct drm_connector*,int) ;} ;
struct TYPE_8__ {struct drm_connector* connector; } ;
struct TYPE_6__ {struct drm_crtc* crtc; } ;
struct TYPE_7__ {TYPE_1__ mode_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ oops_in_progress ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int) ; 

__attribute__((used)) static void FUNC5(struct fb_info *info, int dpms_mode)
{
	struct drm_fb_helper *fb_helper = info->par;
	struct drm_device *dev = fb_helper->dev;
	struct drm_crtc *crtc;
	struct drm_connector *connector;
	int i, j;

	/*
	 * fbdev->blank can be called from irq context in case of a panic.
	 * Since we already have our own special panic handler which will
	 * restore the fbdev console mode completely, just bail out early.
	 */
	if (oops_in_progress)
		return;

	/*
	 * For each CRTC in this fb, turn the connectors on/off.
	 */
	FUNC1(dev);
	if (!FUNC0(fb_helper)) {
		FUNC2(dev);
		return;
	}

	for (i = 0; i < fb_helper->crtc_count; i++) {
		crtc = fb_helper->crtc_info[i].mode_set.crtc;

		if (!crtc->enabled)
			continue;

		/* Walk the connectors & encoders on this fb turning them on/off */
		for (j = 0; j < fb_helper->connector_count; j++) {
			connector = fb_helper->connector_info[j]->connector;
			connector->funcs->dpms(connector, dpms_mode);
			FUNC3(&connector->base,
				dev->mode_config.dpms_property, dpms_mode);
		}
	}
	FUNC2(dev);
}