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
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; struct usb_device* dev; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static int FUNC8(struct gspca_dev *gspca_dev)
{
	struct usb_device *dev = gspca_dev->dev;
	__u16 norme;
	__u16 channel;

	/**************************************/
	FUNC2(dev, 0x03, 0x00, 0x0004);
	FUNC2(dev, 0x03, 0x00, 0x0003);
	FUNC2(dev, 0x03, 0x00, 0x0004);
	FUNC2(dev, 0x03, 0xFF, 0x0003);
	FUNC2(dev, 0x02, 0x00, 0x0000);
	FUNC2(dev, 0x03, 0x60, 0x0000);
	FUNC2(dev, 0x03, 0x18, 0x0001);

	/*sdca506_WriteI2c(value,register) */
	FUNC4(gspca_dev);
	FUNC7(gspca_dev, 0x08, 0x01);	/* Increment Delay */
/*	spca506_WriteI2c(gspca_dev, 0xc0, 0x02); * Analog Input Control 1 */
	FUNC7(gspca_dev, 0x33, 0x03);
						/* Analog Input Control 2 */
	FUNC7(gspca_dev, 0x00, 0x04);
						/* Analog Input Control 3 */
	FUNC7(gspca_dev, 0x00, 0x05);
						/* Analog Input Control 4 */
	FUNC7(gspca_dev, 0x0d, 0x06);
					/* Horizontal Sync Start 0xe9-0x0d */
	FUNC7(gspca_dev, 0xf0, 0x07);
					/* Horizontal Sync Stop  0x0d-0xf0 */

	FUNC7(gspca_dev, 0x98, 0x08);	/* Sync Control */
/*		Defaults value			*/
	FUNC7(gspca_dev, 0x03, 0x09);	/* Luminance Control */
	FUNC7(gspca_dev, 0x80, 0x0a);
						/* Luminance Brightness */
	FUNC7(gspca_dev, 0x47, 0x0b);	/* Luminance Contrast */
	FUNC7(gspca_dev, 0x48, 0x0c);
						/* Chrominance Saturation */
	FUNC7(gspca_dev, 0x00, 0x0d);
						/* Chrominance Hue Control */
	FUNC7(gspca_dev, 0x2a, 0x0f);
						/* Chrominance Gain Control */
	/**************************************/
	FUNC7(gspca_dev, 0x00, 0x10);
						/* Format/Delay Control */
	FUNC7(gspca_dev, 0x0c, 0x11);	/* Output Control 1 */
	FUNC7(gspca_dev, 0xb8, 0x12);	/* Output Control 2 */
	FUNC7(gspca_dev, 0x01, 0x13);	/* Output Control 3 */
	FUNC7(gspca_dev, 0x00, 0x14);	/* reserved */
	FUNC7(gspca_dev, 0x00, 0x15);	/* VGATE START */
	FUNC7(gspca_dev, 0x00, 0x16);	/* VGATE STOP */
	FUNC7(gspca_dev, 0x00, 0x17);    /* VGATE Control (MSB) */
	FUNC7(gspca_dev, 0x00, 0x18);
	FUNC7(gspca_dev, 0x00, 0x19);
	FUNC7(gspca_dev, 0x00, 0x1a);
	FUNC7(gspca_dev, 0x00, 0x1b);
	FUNC7(gspca_dev, 0x00, 0x1c);
	FUNC7(gspca_dev, 0x00, 0x1d);
	FUNC7(gspca_dev, 0x00, 0x1e);
	FUNC7(gspca_dev, 0xa1, 0x1f);
	FUNC7(gspca_dev, 0x02, 0x40);
	FUNC7(gspca_dev, 0xff, 0x41);
	FUNC7(gspca_dev, 0xff, 0x42);
	FUNC7(gspca_dev, 0xff, 0x43);
	FUNC7(gspca_dev, 0xff, 0x44);
	FUNC7(gspca_dev, 0xff, 0x45);
	FUNC7(gspca_dev, 0xff, 0x46);
	FUNC7(gspca_dev, 0xff, 0x47);
	FUNC7(gspca_dev, 0xff, 0x48);
	FUNC7(gspca_dev, 0xff, 0x49);
	FUNC7(gspca_dev, 0xff, 0x4a);
	FUNC7(gspca_dev, 0xff, 0x4b);
	FUNC7(gspca_dev, 0xff, 0x4c);
	FUNC7(gspca_dev, 0xff, 0x4d);
	FUNC7(gspca_dev, 0xff, 0x4e);
	FUNC7(gspca_dev, 0xff, 0x4f);
	FUNC7(gspca_dev, 0xff, 0x50);
	FUNC7(gspca_dev, 0xff, 0x51);
	FUNC7(gspca_dev, 0xff, 0x52);
	FUNC7(gspca_dev, 0xff, 0x53);
	FUNC7(gspca_dev, 0xff, 0x54);
	FUNC7(gspca_dev, 0xff, 0x55);
	FUNC7(gspca_dev, 0xff, 0x56);
	FUNC7(gspca_dev, 0xff, 0x57);
	FUNC7(gspca_dev, 0x00, 0x58);
	FUNC7(gspca_dev, 0x54, 0x59);
	FUNC7(gspca_dev, 0x07, 0x5a);
	FUNC7(gspca_dev, 0x83, 0x5b);
	FUNC7(gspca_dev, 0x00, 0x5c);
	FUNC7(gspca_dev, 0x00, 0x5d);
	FUNC7(gspca_dev, 0x00, 0x5e);
	FUNC7(gspca_dev, 0x00, 0x5f);
	FUNC7(gspca_dev, 0x00, 0x60);
	FUNC7(gspca_dev, 0x05, 0x61);
	FUNC7(gspca_dev, 0x9f, 0x62);
	/**************************************/
	FUNC2(dev, 0x05, 0x00, 0x0003);
	FUNC2(dev, 0x05, 0x00, 0x0004);
	FUNC2(dev, 0x03, 0x10, 0x0001);
	FUNC2(dev, 0x03, 0x78, 0x0000);
	switch (gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv) {
	case 0:
		FUNC6(gspca_dev, 0, 0x10, 0x10);
		break;
	case 1:
		FUNC6(gspca_dev, 1, 0x1a, 0x1a);
		break;
	case 2:
		FUNC6(gspca_dev, 2, 0x1c, 0x1c);
		break;
	case 4:
		FUNC6(gspca_dev, 4, 0x34, 0x34);
		break;
	default:
/*	case 5: */
		FUNC6(gspca_dev, 5, 0x40, 0x40);
		break;
	}

	/* compress setting and size */
	/* set i2c luma */
	FUNC2(dev, 0x02, 0x01, 0x0000);
	FUNC2(dev, 0x03, 0x12, 0x0000);
	FUNC1(gspca_dev, 0x04, 0x0001, 2);
	FUNC0(D_STREAM, "webcam started");
	FUNC3(gspca_dev, &norme, &channel);
	FUNC5(gspca_dev, norme, channel);
	return 0;
}