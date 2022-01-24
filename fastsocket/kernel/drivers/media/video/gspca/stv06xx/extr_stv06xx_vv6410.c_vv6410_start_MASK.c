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
typedef  int u32 ;
struct cam {TYPE_1__* cam_mode; } ;
struct TYPE_4__ {size_t curr_mode; struct cam cam; } ;
struct sd {TYPE_2__ gspca_dev; } ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONF ; 
 int /*<<< orphan*/  D_STREAM ; 
 int LED_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  STV_LED_CTRL ; 
 int /*<<< orphan*/  STV_SCAN_RATE ; 
 int /*<<< orphan*/  STV_X_CTRL ; 
 int /*<<< orphan*/  STV_Y_CTRL ; 
 int VV6410_CROP_TO_QVGA ; 
 int /*<<< orphan*/  VV6410_SETUP0 ; 
 int VV6410_SUBSAMPLE ; 
 int /*<<< orphan*/  VV6410_XENDH ; 
 int /*<<< orphan*/  VV6410_YENDH ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct sd *sd)
{
	int err;
	struct cam *cam = &sd->gspca_dev.cam;
	u32 priv = cam->cam_mode[sd->gspca_dev.curr_mode].priv;

	if (priv & VV6410_CROP_TO_QVGA) {
		FUNC0(D_CONF, "Cropping to QVGA");
		FUNC2(sd, VV6410_XENDH, 320 - 1);
		FUNC2(sd, VV6410_YENDH, 240 - 1);
	} else {
		FUNC2(sd, VV6410_XENDH, 360 - 1);
		FUNC2(sd, VV6410_YENDH, 294 - 1);
	}

	if (priv & VV6410_SUBSAMPLE) {
		FUNC0(D_CONF, "Enabling subsampling");
		FUNC1(sd, STV_Y_CTRL, 0x02);
		FUNC1(sd, STV_X_CTRL, 0x06);

		FUNC1(sd, STV_SCAN_RATE, 0x10);
	} else {
		FUNC1(sd, STV_Y_CTRL, 0x01);
		FUNC1(sd, STV_X_CTRL, 0x0a);

		FUNC1(sd, STV_SCAN_RATE, 0x20);
	}

	/* Turn on LED */
	err = FUNC1(sd, STV_LED_CTRL, LED_ON);
	if (err < 0)
		return err;

	err = FUNC2(sd, VV6410_SETUP0, 0);
	if (err < 0)
		return err;

	FUNC0(D_STREAM, "Starting stream");

	return 0;
}