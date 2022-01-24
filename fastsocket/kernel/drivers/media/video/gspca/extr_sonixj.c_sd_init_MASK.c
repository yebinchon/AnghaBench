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
typedef  int u8 ;
struct sd {int bridge; int sensor; int i2c_addr; int flags; TYPE_1__* ctrls; } ;
struct gspca_dev {int* usb_buf; scalar_t__ usb_err; int ctrl_dis; } ;
struct TYPE_2__ {int def; } ;

/* Variables and functions */
#define  BRIDGE_SN9C102P 135 
#define  BRIDGE_SN9C105 134 
#define  BRIDGE_SN9C110 133 
#define  BRIDGE_SN9C120 132 
 int /*<<< orphan*/  D_PROBE ; 
 int ENODEV ; 
 int F_ILLUM ; 
 int ILLUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
#define  SENSOR_MI0360 131 
 int SENSOR_OM6802 ; 
#define  SENSOR_OV7630 130 
#define  SENSOR_OV7648 129 
#define  SENSOR_PO2030N 128 
 size_t SHARPNESS ; 
 int* ctrl_dis ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int,int) ; 
 int** sn_tb ; 

__attribute__((used)) static int FUNC8(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	const u8 *sn9c1xx;
	u8 regGpio[] = { 0x29, 0x74 };		/* with audio */
	u8 regF1;

	/* setup a selector by bridge */
	FUNC7(gspca_dev, 0xf1, 0x01);
	FUNC5(gspca_dev, 0x00, 1);
	FUNC7(gspca_dev, 0xf1, 0x00);
	FUNC5(gspca_dev, 0x00, 1);		/* get sonix chip id */
	regF1 = gspca_dev->usb_buf[0];
	if (gspca_dev->usb_err < 0)
		return gspca_dev->usb_err;
	FUNC0(D_PROBE, "Sonix chip id: %02x", regF1);
	switch (sd->bridge) {
	case BRIDGE_SN9C102P:
	case BRIDGE_SN9C105:
		if (regF1 != 0x11)
			return -ENODEV;
		break;
	default:
/*	case BRIDGE_SN9C110: */
/*	case BRIDGE_SN9C120: */
		if (regF1 != 0x12)
			return -ENODEV;
	}

	switch (sd->sensor) {
	case SENSOR_MI0360:
		FUNC1(gspca_dev);
		break;
	case SENSOR_OV7630:
		FUNC2(gspca_dev);
		break;
	case SENSOR_OV7648:
		FUNC3(gspca_dev);
		break;
	case SENSOR_PO2030N:
		FUNC4(gspca_dev);
		break;
	}

	switch (sd->bridge) {
	case BRIDGE_SN9C102P:
		FUNC7(gspca_dev, 0x02, regGpio[1]);
		break;
	case BRIDGE_SN9C105:
		FUNC6(gspca_dev, 0x01, regGpio, 2);
		break;
	case BRIDGE_SN9C110:
		FUNC7(gspca_dev, 0x02, 0x62);
		break;
	case BRIDGE_SN9C120:
		regGpio[1] = 0x70;		/* no audio */
		FUNC6(gspca_dev, 0x01, regGpio, 2);
		break;
	}

	if (sd->sensor == SENSOR_OM6802)
		sd->ctrls[SHARPNESS].def = 0x10;

	/* Note we do not disable the sensor clock here (power saving mode),
	   as that also disables the button on the cam. */
	FUNC7(gspca_dev, 0xf1, 0x00);

	/* set the i2c address */
	sn9c1xx = sn_tb[sd->sensor];
	sd->i2c_addr = sn9c1xx[9];

	gspca_dev->ctrl_dis = ctrl_dis[sd->sensor];
	if (!(sd->flags & F_ILLUM))
		gspca_dev->ctrl_dis |= (1 << ILLUM);

	return gspca_dev->usb_err;
}