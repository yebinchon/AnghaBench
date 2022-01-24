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
struct nouveau_fbdev {int /*<<< orphan*/  dev; } ;
struct nouveau_drm {int dummy; } ;
struct fb_info {int /*<<< orphan*/  flags; struct nouveau_fbdev* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBINFO_HWACCEL_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct fb_info *info)
{
	struct nouveau_fbdev *fbcon = info->par;
	struct nouveau_drm *drm = FUNC1(fbcon->dev);

	FUNC0(drm, "GPU lockup - switching to software fbcon\n");
	info->flags |= FBINFO_HWACCEL_DISABLED;
}