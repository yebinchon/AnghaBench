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
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct drm_crtc*,struct drm_display_mode*,int,int,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_crtc *crtc,
		     struct drm_display_mode *mode,
		     int x, int y, struct drm_framebuffer *fb)
{
	int ret;

	ret = FUNC0(crtc, mode, x, y, fb);

	if (ret == 0)
		FUNC1(crtc->dev);

	return ret;
}