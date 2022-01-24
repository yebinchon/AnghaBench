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
struct drm_mode_set {struct drm_framebuffer* fb; struct drm_crtc* crtc; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {TYPE_1__* funcs; struct drm_framebuffer* fb; } ;
struct TYPE_2__ {int (* set_config ) (struct drm_mode_set*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_framebuffer*) ; 
 int FUNC2 (struct drm_mode_set*) ; 

int FUNC3(struct drm_mode_set *set)
{
	struct drm_crtc *crtc = set->crtc;
	struct drm_framebuffer *fb, *old_fb;
	int ret;

	old_fb = crtc->fb;
	fb = set->fb;

	ret = crtc->funcs->set_config(set);
	if (ret == 0) {
		if (old_fb)
			FUNC1(old_fb);
		if (fb)
			FUNC0(fb);
	}

	return ret;
}