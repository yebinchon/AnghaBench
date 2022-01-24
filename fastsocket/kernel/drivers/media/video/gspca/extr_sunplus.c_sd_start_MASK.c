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
struct sd {int bridge; int /*<<< orphan*/  autogain; int /*<<< orphan*/  subtype; int /*<<< orphan*/  quality; int /*<<< orphan*/  jpeg_hdr; } ;
struct gspca_dev {int usb_err; int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AiptekMiniPenCam13 ; 
#define  BRIDGE_SPCA504 132 
 int BRIDGE_SPCA504B ; 
#define  BRIDGE_SPCA504C 131 
 int /*<<< orphan*/  LogitechClickSmart420 ; 
#define  LogitechClickSmart820 130 
#define  MegaImageVI 129 
#define  MegapixV4 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int,int,int,int,int) ; 
 int /*<<< orphan*/  spca504A_clicksmart420_init_data ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  spca504_pccam600_init_data ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int enable;

	/* create the JPEG header */
	FUNC2(sd->jpeg_hdr, gspca_dev->height, gspca_dev->width,
			0x22);		/* JPEG 411 */
	FUNC3(sd->jpeg_hdr, sd->quality);

	if (sd->bridge == BRIDGE_SPCA504B)
		FUNC10(gspca_dev);
	FUNC8(gspca_dev);
	switch (sd->bridge) {
	default:
/*	case BRIDGE_SPCA504B: */
/*	case BRIDGE_SPCA533: */
/*	case BRIDGE_SPCA536: */
		switch (sd->subtype) {
		case MegapixV4:
		case LogitechClickSmart820:
		case MegaImageVI:
			FUNC5(gspca_dev, 0xf0, 0, 0);
			FUNC9(gspca_dev);
			FUNC4(gspca_dev, 0xf0, 4, 0);
			FUNC9(gspca_dev);
			break;
		default:
			FUNC5(gspca_dev, 0x31, 0x0004, 0x00);
			FUNC9(gspca_dev);
			FUNC7(gspca_dev);
			break;
		}
		break;
	case BRIDGE_SPCA504:
		if (sd->subtype == AiptekMiniPenCam13) {
			FUNC12(gspca_dev);

			/* Set AE AWB Banding Type 3-> 50Hz 2-> 60Hz */
			FUNC6(gspca_dev, 0x24,
							8, 3, 0x9e, 1);
			/* Twice sequential need status 0xff->0x9e->0x9d */
			FUNC6(gspca_dev, 0x24,
							8, 3, 0x9e, 0);
			FUNC6(gspca_dev, 0x24,
							0, 0, 0x9d, 1);
		} else {
			FUNC11(gspca_dev, 0x24, 8, 3);
			FUNC12(gspca_dev);
			FUNC11(gspca_dev, 0x24, 8, 3);
			FUNC11(gspca_dev, 0x24, 0, 0);
		}
		FUNC8(gspca_dev);
		FUNC5(gspca_dev, 0x00, 0x270c, 0x05);
							/* L92 sno1t.txt */
		FUNC5(gspca_dev, 0x00, 0x2310, 0x05);
		break;
	case BRIDGE_SPCA504C:
		if (sd->subtype == LogitechClickSmart420) {
			FUNC13(gspca_dev,
				spca504A_clicksmart420_init_data,
				FUNC0(spca504A_clicksmart420_init_data));
		} else {
			FUNC13(gspca_dev, spca504_pccam600_init_data,
				FUNC0(spca504_pccam600_init_data));
		}
		enable = (sd->autogain ? 0x04 : 0x01);
		FUNC5(gspca_dev, 0x0c, 0x0000, enable);
							/* auto exposure */
		FUNC5(gspca_dev, 0xb0, 0x0000, enable);
							/* auto whiteness */

		/* set default exposure compensation and whiteness balance */
		FUNC5(gspca_dev, 0x30, 0x0001, 800);	/* ~ 20 fps */
		FUNC5(gspca_dev, 0x30, 0x0002, 1600);
		FUNC8(gspca_dev);
		break;
	}
	FUNC1(gspca_dev);
	return gspca_dev->usb_err;
}