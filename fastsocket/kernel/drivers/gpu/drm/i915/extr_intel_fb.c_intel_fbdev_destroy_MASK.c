#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_framebuffer {TYPE_1__* obj; int /*<<< orphan*/  base; } ;
struct TYPE_6__ {struct fb_info* fbdev; } ;
struct intel_fbdev {TYPE_3__ helper; struct intel_framebuffer ifb; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct fb_info {TYPE_2__ cmap; int /*<<< orphan*/  screen_base; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 

__attribute__((used)) static void FUNC8(struct drm_device *dev,
				struct intel_fbdev *ifbdev)
{
	struct fb_info *info;
	struct intel_framebuffer *ifb = &ifbdev->ifb;

	if (ifbdev->helper.fbdev) {
		info = ifbdev->helper.fbdev;
		FUNC7(info);
		FUNC6(info->screen_base);
		if (info->cmap.len)
			FUNC4(&info->cmap);
		FUNC5(info);
	}

	FUNC0(&ifbdev->helper);

	FUNC2(&ifb->base);
	FUNC1(&ifb->base);
	if (ifb->obj) {
		FUNC3(&ifb->obj->base);
		ifb->obj = NULL;
	}
}