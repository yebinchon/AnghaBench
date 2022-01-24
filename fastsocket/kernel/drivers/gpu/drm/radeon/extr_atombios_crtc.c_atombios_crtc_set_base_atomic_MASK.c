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
struct radeon_device {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef  enum mode_set_atomic { ____Placeholder_mode_set_atomic } mode_set_atomic ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct drm_crtc*,struct drm_framebuffer*,int,int,int) ; 
 int FUNC3 (struct drm_crtc*,struct drm_framebuffer*,int,int,int) ; 
 int FUNC4 (struct drm_crtc*,struct drm_framebuffer*,int,int,int) ; 

int FUNC5(struct drm_crtc *crtc,
                                  struct drm_framebuffer *fb,
				  int x, int y, enum mode_set_atomic state)
{
       struct drm_device *dev = crtc->dev;
       struct radeon_device *rdev = dev->dev_private;

	if (FUNC1(rdev))
		return FUNC3(crtc, fb, x, y, 1);
	else if (FUNC0(rdev))
		return FUNC2(crtc, fb, x, y, 1);
	else
		return FUNC4(crtc, fb, x, y, 1);
}