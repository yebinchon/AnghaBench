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
struct nouveau_drm {TYPE_1__ client; struct nouveau_channel* channel; } ;
struct nouveau_channel {int accel_done; } ;
struct fb_info {scalar_t__ state; int flags; struct nouveau_fbdev* par; } ;

/* Variables and functions */
 int FBINFO_HWACCEL_DISABLED ; 
 scalar_t__ FBINFO_STATE_RUNNING ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nouveau_channel*) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 

__attribute__((used)) static int
FUNC6(struct fb_info *info)
{
	struct nouveau_fbdev *fbcon = info->par;
	struct nouveau_drm *drm = FUNC4(fbcon->dev);
	struct nouveau_channel *chan = drm->channel;
	int ret;

	if (!chan || !chan->accel_done || FUNC0() ||
	    info->state != FBINFO_STATE_RUNNING ||
	    info->flags & FBINFO_HWACCEL_DISABLED)
		return 0;

	if (!FUNC1(&drm->client.mutex))
		return 0;

	ret = FUNC3(chan);
	FUNC2(&drm->client.mutex);
	if (ret) {
		FUNC5(info);
		return 0;
	}

	chan->accel_done = false;
	return 0;
}