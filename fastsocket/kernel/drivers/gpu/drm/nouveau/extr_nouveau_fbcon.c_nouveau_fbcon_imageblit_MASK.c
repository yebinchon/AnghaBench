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
struct nouveau_fbdev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct nouveau_drm {TYPE_1__ client; int /*<<< orphan*/  device; } ;
struct nouveau_device {scalar_t__ card_type; } ;
struct fb_info {scalar_t__ state; int flags; struct nouveau_fbdev* par; } ;
struct fb_image {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FBINFO_HWACCEL_DISABLED ; 
 scalar_t__ FBINFO_STATE_RUNNING ; 
 scalar_t__ NV_50 ; 
 scalar_t__ NV_C0 ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_image const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int FUNC6 (struct fb_info*,struct fb_image const*) ; 
 int FUNC7 (struct fb_info*,struct fb_image const*) ; 
 struct nouveau_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct fb_info*,struct fb_image const*) ; 

__attribute__((used)) static void
FUNC10(struct fb_info *info, const struct fb_image *image)
{
	struct nouveau_fbdev *fbcon = info->par;
	struct nouveau_drm *drm = FUNC4(fbcon->dev);
	struct nouveau_device *device = FUNC8(drm->device);
	int ret;

	if (info->state != FBINFO_STATE_RUNNING)
		return;

	ret = -ENODEV;
	if (!FUNC1() && !(info->flags & FBINFO_HWACCEL_DISABLED) &&
	    FUNC2(&drm->client.mutex)) {
		if (device->card_type < NV_50)
			ret = FUNC6(info, image);
		else
		if (device->card_type < NV_C0)
			ret = FUNC7(info, image);
		else
			ret = FUNC9(info, image);
		FUNC3(&drm->client.mutex);
	}

	if (ret == 0)
		return;

	if (ret != -ENODEV)
		FUNC5(info);
	FUNC0(info, image);
}