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
struct radeon_fbdev {TYPE_3__ helper; struct radeon_device* rdev; } ;
struct TYPE_7__ {struct radeon_fbdev* rfbdev; } ;
struct TYPE_6__ {int real_vram_size; } ;
struct radeon_device {int /*<<< orphan*/  ddev; int /*<<< orphan*/  num_crtc; TYPE_2__ mode_info; TYPE_1__ mc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RADEONFB_CONN_LIMIT ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_fbdev*) ; 
 struct radeon_fbdev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_fb_helper_funcs ; 

int FUNC7(struct radeon_device *rdev)
{
	struct radeon_fbdev *rfbdev;
	int bpp_sel = 32;
	int ret;

	/* select 8 bpp console on RN50 or 16MB cards */
	if (FUNC0(rdev) || rdev->mc.real_vram_size <= (32*1024*1024))
		bpp_sel = 8;

	rfbdev = FUNC6(sizeof(struct radeon_fbdev), GFP_KERNEL);
	if (!rfbdev)
		return -ENOMEM;

	rfbdev->rdev = rdev;
	rdev->mode_info.rfbdev = rfbdev;
	rfbdev->helper.funcs = &radeon_fb_helper_funcs;

	ret = FUNC1(rdev->ddev, &rfbdev->helper,
				 rdev->num_crtc,
				 RADEONFB_CONN_LIMIT);
	if (ret) {
		FUNC5(rfbdev);
		return ret;
	}

	FUNC3(&rfbdev->helper);

	/* disable all the possible outputs/crtcs before entering KMS mode */
	FUNC4(rdev->ddev);

	FUNC2(&rfbdev->helper, bpp_sel);
	return 0;
}