#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * funcs; } ;
struct nouveau_fbdev {TYPE_3__ helper; struct drm_device* dev; } ;
struct TYPE_7__ {int size; } ;
struct nouveau_fb {TYPE_2__ ram; } ;
struct nouveau_drm {struct nouveau_fbdev* fbcon; int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct drm_device*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_fbdev*) ; 
 struct nouveau_fbdev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC6 (struct drm_device*) ; 
 struct nouveau_fb* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nouveau_fbcon_helper_funcs ; 

int
FUNC8(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC6(dev);
	struct nouveau_fb *pfb = FUNC7(drm->device);
	struct nouveau_fbdev *fbcon;
	int preferred_bpp;
	int ret;

	if (!dev->mode_config.num_crtc)
		return 0;

	fbcon = FUNC5(sizeof(struct nouveau_fbdev), GFP_KERNEL);
	if (!fbcon)
		return -ENOMEM;

	fbcon->dev = dev;
	drm->fbcon = fbcon;
	fbcon->helper.funcs = &nouveau_fbcon_helper_funcs;

	ret = FUNC0(dev, &fbcon->helper,
				 dev->mode_config.num_crtc, 4);
	if (ret) {
		FUNC4(fbcon);
		return ret;
	}

	FUNC2(&fbcon->helper);

	if (pfb->ram.size <= 32 * 1024 * 1024)
		preferred_bpp = 8;
	else
	if (pfb->ram.size <= 64 * 1024 * 1024)
		preferred_bpp = 16;
	else
		preferred_bpp = 32;

	/* disable all the possible outputs/crtcs before entering KMS mode */
	FUNC3(dev);

	FUNC1(&fbcon->helper, preferred_bpp);
	return 0;
}