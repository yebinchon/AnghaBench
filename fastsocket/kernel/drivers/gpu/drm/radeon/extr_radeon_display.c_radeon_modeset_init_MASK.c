#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  aper_base; } ;
struct TYPE_8__ {int mode_config_initialized; } ;
struct radeon_device {int num_crtc; TYPE_4__* ddev; scalar_t__ is_atom_bios; TYPE_3__ mc; TYPE_1__ mode_info; } ;
struct TYPE_9__ {int max_width; int max_height; int preferred_depth; int prefer_shadow; int /*<<< orphan*/  fb_base; int /*<<< orphan*/ * funcs; } ;
struct TYPE_11__ {TYPE_2__ mode_config; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  radeon_mode_funcs ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int FUNC14 (TYPE_4__*) ; 

int FUNC15(struct radeon_device *rdev)
{
	int i;
	int ret;

	FUNC3(rdev->ddev);
	rdev->mode_info.mode_config_initialized = true;

	rdev->ddev->mode_config.funcs = &radeon_mode_funcs;

	if (FUNC1(rdev)) {
		rdev->ddev->mode_config.max_width = 16384;
		rdev->ddev->mode_config.max_height = 16384;
	} else if (FUNC0(rdev)) {
		rdev->ddev->mode_config.max_width = 8192;
		rdev->ddev->mode_config.max_height = 8192;
	} else {
		rdev->ddev->mode_config.max_width = 4096;
		rdev->ddev->mode_config.max_height = 4096;
	}

	rdev->ddev->mode_config.preferred_depth = 24;
	rdev->ddev->mode_config.prefer_shadow = 1;

	rdev->ddev->mode_config.fb_base = rdev->mc.aper_base;

	ret = FUNC12(rdev);
	if (ret) {
		return ret;
	}

	/* init i2c buses */
	FUNC11(rdev);

	/* check combios for a valid hardcoded EDID - Sun servers */
	if (!rdev->is_atom_bios) {
		/* check for hardcoded EDID in BIOS */
		FUNC7(rdev);
	}

	/* allocate crtcs */
	for (i = 0; i < rdev->num_crtc; i++) {
		FUNC8(rdev->ddev, i);
	}

	/* okay we should have all the bios connectors */
	ret = FUNC14(rdev->ddev);
	if (!ret) {
		return ret;
	}

	/* init dig PHYs, disp eng pll */
	if (rdev->is_atom_bios) {
		FUNC6(rdev);
		FUNC5(rdev);
	}

	/* initialize hpd */
	FUNC10(rdev);

	/* setup afmt */
	FUNC4(rdev);

	/* Initialize power management */
	FUNC13(rdev);

	FUNC9(rdev);
	FUNC2(rdev->ddev);

	return 0;
}