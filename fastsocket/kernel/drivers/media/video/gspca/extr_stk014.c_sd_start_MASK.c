#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sd {int /*<<< orphan*/  quality; int /*<<< orphan*/  jpeg_hdr; } ;
struct gspca_dev {int width; int alt; int usb_err; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int ret, value;

	/* create the JPEG header */
	FUNC2(sd->jpeg_hdr, gspca_dev->height, gspca_dev->width,
			0x22);		/* JPEG 411 */
	FUNC3(sd->jpeg_hdr, sd->quality);

	/* work on alternate 1 */
	FUNC13(gspca_dev->dev, gspca_dev->iface, 1);

	FUNC7(gspca_dev, 0x10000000);
	FUNC7(gspca_dev, 0x00000000);
	FUNC7(gspca_dev, 0x8002e001);
	FUNC7(gspca_dev, 0x14000000);
	if (gspca_dev->width > 320)
		value = 0x8002e001;		/* 640x480 */
	else
		value = 0x4001f000;		/* 320x240 */
	FUNC7(gspca_dev, value);
	ret = FUNC13(gspca_dev->dev,
					gspca_dev->iface,
					gspca_dev->alt);
	if (ret < 0) {
		FUNC1("set intf %d %d failed",
			gspca_dev->iface, gspca_dev->alt);
		gspca_dev->usb_err = ret;
		goto out;
	}
	 FUNC5(gspca_dev, 0x0630);
	FUNC4(gspca_dev, 0x000020);	/* << (value ff ff ff ff) */
	FUNC5(gspca_dev, 0x0650);
	FUNC12(gspca_dev, 0x000020, 0xffffffff);
	FUNC6(gspca_dev, 0x0620, 0);
	FUNC6(gspca_dev, 0x0630, 0);
	FUNC6(gspca_dev, 0x0640, 0);
	FUNC6(gspca_dev, 0x0650, 0);
	FUNC6(gspca_dev, 0x0660, 0);
	FUNC8(gspca_dev);		/* whiteness */
	FUNC10(gspca_dev);			/* contrast */
	FUNC9(gspca_dev);			/* saturation */
	FUNC7(gspca_dev, 0x09800000);		/* Red ? */
	FUNC7(gspca_dev, 0x0a800000);		/* Green ? */
	FUNC7(gspca_dev, 0x0b800000);		/* Blue ? */
	FUNC7(gspca_dev, 0x0d030000);		/* Gamma ? */
	FUNC11(gspca_dev);

	/* start the video flow */
	FUNC7(gspca_dev, 0x01000000);
	FUNC7(gspca_dev, 0x01000000);
	if (gspca_dev->usb_err >= 0)
		FUNC0(D_STREAM, "camera started alt: 0x%02x",
				gspca_dev->alt);
out:
	return gspca_dev->usb_err;
}