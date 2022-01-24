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
struct usb_device {int dummy; } ;
struct sd {int subtype; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; struct usb_device* dev; } ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
#define  Arowana300KCMOSCamera 131 
#define  MystFromOriUnknownCamera 130 
 int /*<<< orphan*/  SPCA501_REG_CTLRL ; 
 int /*<<< orphan*/  SPCA50X_REG_USB ; 
#define  SmileIntlCamera 129 
#define  ThreeComHomeConnectLite 128 
 int /*<<< orphan*/  FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  spca501_3com_open_data ; 
 int /*<<< orphan*/  spca501_open_data ; 
 int /*<<< orphan*/  spca501c_arowana_open_data ; 
 int /*<<< orphan*/  spca501c_mysterious_init_data ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct usb_device *dev = gspca_dev->dev;
	int mode;

	switch (sd->subtype) {
	case ThreeComHomeConnectLite:
		/* Special handling for 3com data */
		FUNC4(gspca_dev, spca501_3com_open_data);
		break;
	case Arowana300KCMOSCamera:
	case SmileIntlCamera:
		/* Arowana 300k CMOS Camera data */
		FUNC4(gspca_dev, spca501c_arowana_open_data);
		break;
	case MystFromOriUnknownCamera:
		/* Unknown CMOS Camera data */
		FUNC4(gspca_dev, spca501c_mysterious_init_data);
		break;
	default:
		/* Generic 501 open data */
		FUNC4(gspca_dev, spca501_open_data);
	}

	/* memorize the wanted pixel format */
	mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;

	/* Enable ISO packet machine CTRL reg=2,
	 * index=1 bitmask=0x2 (bit ordinal 1) */
	FUNC0(dev, SPCA50X_REG_USB, 0x6, 0x94);
	switch (mode) {
	case 0: /* 640x480 */
		FUNC0(dev, SPCA50X_REG_USB, 0x07, 0x004a);
		break;
	case 1: /* 320x240 */
		FUNC0(dev, SPCA50X_REG_USB, 0x07, 0x104a);
		break;
	default:
/*	case 2:  * 160x120 */
		FUNC0(dev, SPCA50X_REG_USB, 0x07, 0x204a);
		break;
	}
	FUNC0(dev, SPCA501_REG_CTLRL, 0x01, 0x02);

	/* HDG atleast the Intel CreateAndShare needs to have one of its
	 * brightness / contrast / color set otherwise it assumes what seems
	 * max contrast. Note that strange enough setting any of these is
	 * enough to fix the max contrast problem, to be sure we set all 3 */
	FUNC1(gspca_dev);
	FUNC3(gspca_dev);
	FUNC2(gspca_dev);
	return 0;
}