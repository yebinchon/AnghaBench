#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nouveau_framebuffer {int /*<<< orphan*/  base; TYPE_1__* nvbo; int /*<<< orphan*/  vma; } ;
struct TYPE_7__ {struct fb_info* fbdev; } ;
struct nouveau_fbdev {TYPE_4__ helper; struct nouveau_framebuffer nouveau_fb; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct fb_info {TYPE_3__ cmap; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  gem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 

__attribute__((used)) static int
FUNC9(struct drm_device *dev, struct nouveau_fbdev *fbcon)
{
	struct nouveau_framebuffer *nouveau_fb = &fbcon->nouveau_fb;
	struct fb_info *info;

	if (fbcon->helper.fbdev) {
		info = fbcon->helper.fbdev;
		FUNC8(info);
		if (info->cmap.len)
			FUNC4(&info->cmap);
		FUNC5(info);
	}

	if (nouveau_fb->nvbo) {
		FUNC6(nouveau_fb->nvbo);
		FUNC7(nouveau_fb->nvbo, &nouveau_fb->vma);
		FUNC3(nouveau_fb->nvbo->gem);
		nouveau_fb->nvbo = NULL;
	}
	FUNC0(&fbcon->helper);
	FUNC2(&nouveau_fb->base);
	FUNC1(&nouveau_fb->base);
	return 0;
}