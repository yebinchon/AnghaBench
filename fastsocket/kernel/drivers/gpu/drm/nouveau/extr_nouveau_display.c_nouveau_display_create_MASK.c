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
typedef  scalar_t__ u32 ;
struct nouveau_drm {int /*<<< orphan*/  device; struct nouveau_display* display; } ;
struct nouveau_display {int /*<<< orphan*/  (* dtor ) (struct drm_device*) ;void* color_vibrance_property; void* vibrant_hue_property; void* underscan_vborder_property; void* underscan_hborder_property; int /*<<< orphan*/  underscan_property; int /*<<< orphan*/  dithering_depth; int /*<<< orphan*/  dithering_mode; } ;
struct TYPE_4__ {int max_width; int max_height; int preferred_depth; int prefer_shadow; scalar_t__ num_crtc; scalar_t__ min_height; scalar_t__ min_width; int /*<<< orphan*/  fb_base; int /*<<< orphan*/ * funcs; } ;
struct drm_device {TYPE_1__ mode_config; TYPE_2__* pdev; } ;
struct TYPE_6__ {scalar_t__ card_type; } ;
struct TYPE_5__ {int class; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NV_10 ; 
 scalar_t__ NV_50 ; 
 scalar_t__ NV_D0 ; 
 scalar_t__ PCI_CLASS_DISPLAY_VGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dither_depth ; 
 int /*<<< orphan*/  dither_mode ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 void* FUNC8 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct drm_device*,scalar_t__) ; 
 struct nouveau_display* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 struct nouveau_drm* FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_mode_config_funcs ; 
 int nouveau_modeset ; 
 int FUNC13 (struct drm_device*) ; 
 int FUNC14 (struct drm_device*) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*) ; 
 int /*<<< orphan*/  underscan ; 

int
FUNC18(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC12(dev);
	struct nouveau_display *disp;
	u32 pclass = dev->pdev->class >> 8;
	int ret, gen;

	disp = drm->display = FUNC10(sizeof(*disp), GFP_KERNEL);
	if (!disp)
		return -ENOMEM;

	FUNC5(dev);
	FUNC7(dev);
	FUNC6(dev);

	if (FUNC15(drm->device)->card_type < NV_50)
		gen = 0;
	else
	if (FUNC15(drm->device)->card_type < NV_D0)
		gen = 1;
	else
		gen = 2;

	FUNC0(disp->dithering_mode, gen, "dithering mode", dither_mode);
	FUNC0(disp->dithering_depth, gen, "dithering depth", dither_depth);
	FUNC0(disp->underscan_property, gen, "underscan", underscan);

	disp->underscan_hborder_property =
		FUNC8(dev, 0, "underscan hborder", 0, 128);

	disp->underscan_vborder_property =
		FUNC8(dev, 0, "underscan vborder", 0, 128);

	if (gen >= 1) {
		/* -90..+90 */
		disp->vibrant_hue_property =
			FUNC8(dev, 0, "vibrant hue", 0, 180);

		/* -100..+100 */
		disp->color_vibrance_property =
			FUNC8(dev, 0, "color vibrance", 0, 200);
	}

	dev->mode_config.funcs = &nouveau_mode_config_funcs;
	dev->mode_config.fb_base = FUNC16(dev->pdev, 1);

	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;
	if (FUNC15(drm->device)->card_type < NV_10) {
		dev->mode_config.max_width = 2048;
		dev->mode_config.max_height = 2048;
	} else
	if (FUNC15(drm->device)->card_type < NV_50) {
		dev->mode_config.max_width = 4096;
		dev->mode_config.max_height = 4096;
	} else {
		dev->mode_config.max_width = 8192;
		dev->mode_config.max_height = 8192;
	}

	dev->mode_config.preferred_depth = 24;
	dev->mode_config.prefer_shadow = 1;

	FUNC3(dev);
	FUNC1(dev);

	if (nouveau_modeset == 1 ||
	    (nouveau_modeset < 0 && pclass == PCI_CLASS_DISPLAY_VGA)) {
		if (FUNC15(drm->device)->card_type < NV_50)
			ret = FUNC13(dev);
		else
			ret = FUNC14(dev);
		if (ret)
			goto disp_create_err;

		if (dev->mode_config.num_crtc) {
			ret = FUNC9(dev, dev->mode_config.num_crtc);
			if (ret)
				goto vblank_err;
		}

		FUNC11(dev);
	}

	return 0;

vblank_err:
	disp->dtor(dev);
disp_create_err:
	FUNC2(dev);
	FUNC4(dev);
	return ret;
}