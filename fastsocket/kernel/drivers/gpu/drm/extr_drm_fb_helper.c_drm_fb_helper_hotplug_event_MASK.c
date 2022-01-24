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
typedef  int /*<<< orphan*/  u32 ;
struct drm_fb_helper {int delayed_hotplug; int /*<<< orphan*/  fbdev; struct drm_device* dev; TYPE_1__* fb; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct TYPE_3__ {int /*<<< orphan*/  bits_per_pixel; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int FUNC2 (struct drm_fb_helper*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct drm_fb_helper *fb_helper)
{
	struct drm_device *dev = fb_helper->dev;
	int count = 0;
	u32 max_width, max_height, bpp_sel;

	if (!fb_helper->fb)
		return 0;

	FUNC7(&fb_helper->dev->mode_config.mutex);
	if (!FUNC1(fb_helper)) {
		fb_helper->delayed_hotplug = true;
		FUNC8(&fb_helper->dev->mode_config.mutex);
		return 0;
	}
	FUNC0("\n");

	max_width = fb_helper->fb->width;
	max_height = fb_helper->fb->height;
	bpp_sel = fb_helper->fb->bits_per_pixel;

	count = FUNC2(fb_helper, max_width,
						    max_height);
	FUNC8(&fb_helper->dev->mode_config.mutex);

	FUNC4(dev);
	FUNC6(fb_helper);
	FUNC5(dev);
	FUNC3(fb_helper->fbdev);

	return 0;
}