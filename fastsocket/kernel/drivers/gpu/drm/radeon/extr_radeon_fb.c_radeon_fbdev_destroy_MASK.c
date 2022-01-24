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
struct radeon_framebuffer {int /*<<< orphan*/  base; int /*<<< orphan*/ * obj; } ;
struct TYPE_4__ {struct fb_info* fbdev; } ;
struct radeon_fbdev {TYPE_2__ helper; struct radeon_framebuffer rfb; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct fb_info {TYPE_1__ cmap; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev, struct radeon_fbdev *rfbdev)
{
	struct fb_info *info;
	struct radeon_framebuffer *rfb = &rfbdev->rfb;

	if (rfbdev->helper.fbdev) {
		info = rfbdev->helper.fbdev;

		FUNC6(info);
		if (info->cmap.len)
			FUNC3(&info->cmap);
		FUNC4(info);
	}

	if (rfb->obj) {
		FUNC5(rfb->obj);
		rfb->obj = NULL;
	}
	FUNC0(&rfbdev->helper);
	FUNC2(&rfb->base);
	FUNC1(&rfb->base);

	return 0;
}