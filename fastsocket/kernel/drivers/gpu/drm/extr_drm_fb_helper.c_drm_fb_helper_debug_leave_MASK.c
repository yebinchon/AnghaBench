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
struct fb_info {struct drm_fb_helper* par; } ;
struct drm_mode_set {struct drm_crtc* crtc; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_fb_helper {int crtc_count; TYPE_1__* crtc_info; } ;
struct drm_crtc_helper_funcs {int /*<<< orphan*/  (* mode_set_base_atomic ) (struct drm_crtc*,struct drm_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct drm_crtc {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  enabled; struct drm_crtc_helper_funcs* helper_private; } ;
struct TYPE_2__ {struct drm_mode_set mode_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LEAVE_ATOMIC_MODE_SET ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 struct drm_framebuffer* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,struct drm_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct fb_info *info)
{
	struct drm_fb_helper *helper = info->par;
	struct drm_crtc *crtc;
	struct drm_crtc_helper_funcs *funcs;
	struct drm_framebuffer *fb;
	int i;

	for (i = 0; i < helper->crtc_count; i++) {
		struct drm_mode_set *mode_set = &helper->crtc_info[i].mode_set;
		crtc = mode_set->crtc;
		funcs = crtc->helper_private;
		fb = FUNC2(crtc);

		if (!crtc->enabled)
			continue;

		if (!fb) {
			FUNC0("no fb to restore??\n");
			continue;
		}

		FUNC1(mode_set->crtc);
		funcs->mode_set_base_atomic(mode_set->crtc, fb, crtc->x,
					    crtc->y, LEAVE_ATOMIC_MODE_SET);
	}

	return 0;
}