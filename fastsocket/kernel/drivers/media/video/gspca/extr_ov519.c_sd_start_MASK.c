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
struct TYPE_2__ {int ctrl_dis; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct sd {int bridge; int snapshot_needs_reset; int first_frame; TYPE_1__ gspca_dev; int /*<<< orphan*/  sensor_height; int /*<<< orphan*/  sensor_width; } ;
struct gspca_dev {int usb_err; } ;

/* Variables and functions */
 int AUTOBRIGHT ; 
#define  BRIDGE_OV511 133 
#define  BRIDGE_OV511PLUS 132 
#define  BRIDGE_OV518 131 
#define  BRIDGE_OV518PLUS 130 
#define  BRIDGE_OV519 129 
#define  BRIDGE_W9968CF 128 
 int BRIGHTNESS ; 
 int COLORS ; 
 int CONTRAST ; 
 int FREQ ; 
 int HFLIP ; 
 int VFLIP ; 
 int /*<<< orphan*/  FUNC0 (struct sd*) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct sd*) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct sd*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct sd*) ; 

__attribute__((used)) static int FUNC14(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	/* Default for most bridges, allow bridge_mode_init_regs to override */
	sd->sensor_width = sd->gspca_dev.width;
	sd->sensor_height = sd->gspca_dev.height;

	switch (sd->bridge) {
	case BRIDGE_OV511:
	case BRIDGE_OV511PLUS:
		FUNC0(sd);
		break;
	case BRIDGE_OV518:
	case BRIDGE_OV518PLUS:
		FUNC1(sd);
		break;
	case BRIDGE_OV519:
		FUNC2(sd);
		break;
	/* case BRIDGE_OVFX2: nothing to do */
	case BRIDGE_W9968CF:
		FUNC13(sd);
		break;
	}

	FUNC6(sd);

	if (!(sd->gspca_dev.ctrl_dis & (1 << CONTRAST)))
		FUNC10(gspca_dev);
	if (!(sd->gspca_dev.ctrl_dis & (1 << BRIGHTNESS)))
		FUNC8(gspca_dev);
	if (!(sd->gspca_dev.ctrl_dis & (1 << COLORS)))
		FUNC9(gspca_dev);
	if (!(sd->gspca_dev.ctrl_dis & ((1 << HFLIP) | (1 << VFLIP))))
		FUNC12(gspca_dev);
	if (!(sd->gspca_dev.ctrl_dis & (1 << AUTOBRIGHT)))
		FUNC7(gspca_dev);
	if (!(sd->gspca_dev.ctrl_dis & (1 << FREQ)))
		FUNC11(sd);

	/* Force clear snapshot state in case the snapshot button was
	   pressed while we weren't streaming */
	sd->snapshot_needs_reset = 1;
	FUNC5(gspca_dev);

	sd->first_frame = 3;

	FUNC4(sd);
	FUNC3(sd, 1);
	return gspca_dev->usb_err;
}