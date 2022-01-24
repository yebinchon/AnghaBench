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
struct TYPE_3__ {int curr_mode; } ;
struct sd {int bridge; int sensor; int frame_rate; TYPE_2__* ctrls; TYPE_1__ gspca_dev; int /*<<< orphan*/  sif; } ;
struct cam {void* nmodes; void* cam_mode; } ;
struct gspca_dev {int usb_err; int /*<<< orphan*/  ctrl_dis; struct cam cam; } ;
struct TYPE_4__ {int def; int max; int val; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
#define  BRIDGE_OV511 146 
#define  BRIDGE_OV511PLUS 145 
#define  BRIDGE_OV518 144 
#define  BRIDGE_OV518PLUS 143 
#define  BRIDGE_OV519 142 
#define  BRIDGE_OVFX2 141 
#define  BRIDGE_W9968CF 140 
 size_t BRIGHTNESS ; 
 size_t COLORS ; 
 size_t CONTRAST ; 
 int /*<<< orphan*/  D_ERR ; 
 int EINVAL ; 
 size_t FREQ ; 
 int /*<<< orphan*/  OV519_R57_SNAPSHOT ; 
 int /*<<< orphan*/  OV6xx0_SID ; 
 int /*<<< orphan*/  OV7670_COM7_RESET ; 
 int /*<<< orphan*/  OV7670_R12_COM7 ; 
 int /*<<< orphan*/  OV7xx0_SID ; 
 int /*<<< orphan*/  OV8xx0_SID ; 
 int /*<<< orphan*/  OV_HIRES_SID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
#define  SEN_OV2610 139 
#define  SEN_OV3610 138 
#define  SEN_OV6620 137 
#define  SEN_OV6630 136 
#define  SEN_OV66308AF 135 
#define  SEN_OV7620 134 
#define  SEN_OV7620AE 133 
#define  SEN_OV7640 132 
#define  SEN_OV7648 131 
#define  SEN_OV7660 130 
#define  SEN_OV7670 129 
#define  SEN_OV8610 128 
 int /*<<< orphan*/ * ctrl_dis ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*,int,int,int) ; 
 void* init_519_ov7660 ; 
 scalar_t__ FUNC5 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* norm_2610 ; 
 void* norm_3620b ; 
 void* norm_6x20 ; 
 void* norm_6x30 ; 
 void* norm_7610 ; 
 void* norm_7620 ; 
 void* norm_7640 ; 
 void* norm_7660 ; 
 void* norm_7670 ; 
 void* norm_8610 ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 void* ov511_sif_mode ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 void* ov518_sif_mode ; 
 int /*<<< orphan*/  FUNC9 (struct sd*) ; 
 int /*<<< orphan*/  FUNC10 (struct sd*) ; 
 int /*<<< orphan*/  FUNC11 (struct sd*) ; 
 void* ov519_sif_mode ; 
 int /*<<< orphan*/  FUNC12 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sd*) ; 
 int /*<<< orphan*/  FUNC14 (struct sd*) ; 
 int /*<<< orphan*/  FUNC15 (struct sd*) ; 
 int /*<<< orphan*/  FUNC16 (struct sd*) ; 
 int /*<<< orphan*/  FUNC17 (struct sd*) ; 
 int /*<<< orphan*/  FUNC18 (struct sd*) ; 
 int /*<<< orphan*/  FUNC19 (struct sd*) ; 
 void* ovfx2_ov2610_mode ; 
 void* ovfx2_ov3610_mode ; 
 int /*<<< orphan*/  FUNC20 (struct sd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct sd*) ; 
 int /*<<< orphan*/  FUNC26 (struct sd*) ; 
 void* w9968cf_vga_mode ; 
 int /*<<< orphan*/  FUNC27 (struct sd*,void*,void*) ; 
 int /*<<< orphan*/  FUNC28 (struct sd*,void*,void*) ; 

__attribute__((used)) static int FUNC29(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct cam *cam = &gspca_dev->cam;

	switch (sd->bridge) {
	case BRIDGE_OV511:
	case BRIDGE_OV511PLUS:
		FUNC7(gspca_dev);
		break;
	case BRIDGE_OV518:
	case BRIDGE_OV518PLUS:
		FUNC8(gspca_dev);
		break;
	case BRIDGE_OV519:
		FUNC9(sd);
		break;
	case BRIDGE_OVFX2:
		FUNC19(sd);
		break;
	case BRIDGE_W9968CF:
		FUNC25(sd);
		break;
	}

	/* The OV519 must be more aggressive about sensor detection since
	 * I2C write will never fail if the sensor is not present. We have
	 * to try to initialize the sensor to detect its presence */
	sd->sensor = -1;

	/* Test for 76xx */
	if (FUNC5(sd, OV7xx0_SID) >= 0) {
		FUNC16(sd);

	/* Test for 6xx0 */
	} else if (FUNC5(sd, OV6xx0_SID) >= 0) {
		FUNC15(sd);

	/* Test for 8xx0 */
	} else if (FUNC5(sd, OV8xx0_SID) >= 0) {
		FUNC17(sd);

	/* Test for 3xxx / 2xxx */
	} else if (FUNC5(sd, OV_HIRES_SID) >= 0) {
		FUNC18(sd);
	} else {
		FUNC2("Can't determine sensor slave IDs");
		goto error;
	}

	if (sd->sensor < 0)
		goto error;

	FUNC12(sd, 0);	/* turn LED off */

	switch (sd->bridge) {
	case BRIDGE_OV511:
	case BRIDGE_OV511PLUS:
		if (sd->sif) {
			cam->cam_mode = ov511_sif_mode;
			cam->nmodes = FUNC0(ov511_sif_mode);
		}
		break;
	case BRIDGE_OV518:
	case BRIDGE_OV518PLUS:
		if (sd->sif) {
			cam->cam_mode = ov518_sif_mode;
			cam->nmodes = FUNC0(ov518_sif_mode);
		}
		break;
	case BRIDGE_OV519:
		if (sd->sif) {
			cam->cam_mode = ov519_sif_mode;
			cam->nmodes = FUNC0(ov519_sif_mode);
		}
		break;
	case BRIDGE_OVFX2:
		if (sd->sensor == SEN_OV2610) {
			cam->cam_mode = ovfx2_ov2610_mode;
			cam->nmodes = FUNC0(ovfx2_ov2610_mode);
		} else if (sd->sensor == SEN_OV3610) {
			cam->cam_mode = ovfx2_ov3610_mode;
			cam->nmodes = FUNC0(ovfx2_ov3610_mode);
		} else if (sd->sif) {
			cam->cam_mode = ov519_sif_mode;
			cam->nmodes = FUNC0(ov519_sif_mode);
		}
		break;
	case BRIDGE_W9968CF:
		if (sd->sif)
			cam->nmodes = FUNC0(w9968cf_vga_mode) - 1;

		/* w9968cf needs initialisation once the sensor is known */
		FUNC26(sd);
		break;
	}

	gspca_dev->ctrl_dis = ctrl_dis[sd->sensor];

	/* initialize the sensor */
	switch (sd->sensor) {
	case SEN_OV2610:
		FUNC27(sd, norm_2610, FUNC0(norm_2610));

		/* Enable autogain, autoexpo, awb, bandfilter */
		FUNC4(sd, 0x13, 0x27, 0x27);
		break;
	case SEN_OV3610:
		FUNC27(sd, norm_3620b, FUNC0(norm_3620b));

		/* Enable autogain, autoexpo, awb, bandfilter */
		FUNC4(sd, 0x13, 0x27, 0x27);
		break;
	case SEN_OV6620:
		FUNC27(sd, norm_6x20, FUNC0(norm_6x20));
		break;
	case SEN_OV6630:
	case SEN_OV66308AF:
		sd->ctrls[CONTRAST].def = 200;
				 /* The default is too low for the ov6630 */
		FUNC27(sd, norm_6x30, FUNC0(norm_6x30));
		break;
	default:
/*	case SEN_OV7610: */
/*	case SEN_OV76BE: */
		FUNC27(sd, norm_7610, FUNC0(norm_7610));
		FUNC4(sd, 0x0e, 0x00, 0x40);
		break;
	case SEN_OV7620:
	case SEN_OV7620AE:
		FUNC27(sd, norm_7620, FUNC0(norm_7620));
		break;
	case SEN_OV7640:
	case SEN_OV7648:
		FUNC27(sd, norm_7640, FUNC0(norm_7640));
		break;
	case SEN_OV7660:
		FUNC3(sd, OV7670_R12_COM7, OV7670_COM7_RESET);
		FUNC6(14);
		FUNC20(sd, OV519_R57_SNAPSHOT, 0x23);
		FUNC28(sd, init_519_ov7660,
				FUNC0(init_519_ov7660));
		FUNC27(sd, norm_7660, FUNC0(norm_7660));
		sd->gspca_dev.curr_mode = 1;	/* 640x480 */
		sd->frame_rate = 15;
		FUNC11(sd);
		FUNC10(sd);
		sd->ctrls[COLORS].max = 4;	/* 0..4 */
		sd->ctrls[COLORS].val =
			sd->ctrls[COLORS].def = 2;
		FUNC23(gspca_dev);
		sd->ctrls[CONTRAST].max = 6;	/* 0..6 */
		sd->ctrls[CONTRAST].val =
			sd->ctrls[CONTRAST].def = 3;
		FUNC24(gspca_dev);
		sd->ctrls[BRIGHTNESS].max = 6;	/* 0..6 */
		sd->ctrls[BRIGHTNESS].val =
			sd->ctrls[BRIGHTNESS].def = 3;
		FUNC22(gspca_dev);
		FUNC21(gspca_dev);
		FUNC13(sd);
		FUNC14(sd);			/* not in win traces */
		FUNC12(sd, 0);
		break;
	case SEN_OV7670:
		sd->ctrls[FREQ].max = 3;	/* auto */
		sd->ctrls[FREQ].def = 3;
		FUNC27(sd, norm_7670, FUNC0(norm_7670));
		break;
	case SEN_OV8610:
		FUNC27(sd, norm_8610, FUNC0(norm_8610));
		break;
	}
	return gspca_dev->usb_err;
error:
	FUNC1(D_ERR, "OV519 Config failed");
	return -EINVAL;
}