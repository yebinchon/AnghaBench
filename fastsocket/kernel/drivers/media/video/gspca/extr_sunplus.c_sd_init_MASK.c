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
struct sd {int bridge; int /*<<< orphan*/  subtype; } ;
struct gspca_dev {int usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AiptekMiniPenCam13 ; 
#define  BRIDGE_SPCA504B 131 
#define  BRIDGE_SPCA504C 130 
#define  BRIDGE_SPCA533 129 
#define  BRIDGE_SPCA536 128 
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  LogitechClickSmart420 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  qtable_creative_pccam ; 
 int /*<<< orphan*/  qtable_spca504_default ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int,int,int,int,int) ; 
 int /*<<< orphan*/  spca504A_clicksmart420_open_data ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  spca504_pccam600_open_data ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	switch (sd->bridge) {
	case BRIDGE_SPCA504B:
		FUNC4(gspca_dev, 0x1d, 0x00, 0);
		FUNC4(gspca_dev, 0x00, 0x2306, 0x01);
		FUNC4(gspca_dev, 0x00, 0x0d04, 0x00);
		FUNC4(gspca_dev, 0x00, 0x2000, 0x00);
		FUNC4(gspca_dev, 0x00, 0x2301, 0x13);
		FUNC4(gspca_dev, 0x00, 0x2306, 0x00);
		/* fall thru */
	case BRIDGE_SPCA533:
		FUNC7(gspca_dev);
		FUNC11(gspca_dev);
		break;
	case BRIDGE_SPCA536:
		FUNC11(gspca_dev);
		FUNC2(gspca_dev, 0x00, 0x5002, 1);
		FUNC3(gspca_dev, 0x24, 0, 0, 0);
		FUNC2(gspca_dev, 0x24, 0, 1);
		FUNC7(gspca_dev);
		FUNC4(gspca_dev, 0x34, 0, 0);
		FUNC8(gspca_dev);
		break;
	case BRIDGE_SPCA504C:	/* pccam600 */
		FUNC1(D_STREAM, "Opening SPCA504 (PC-CAM 600)");
		FUNC4(gspca_dev, 0xe0, 0x0000, 0x0000);
		FUNC4(gspca_dev, 0xe0, 0x0000, 0x0001);	/* reset */
		FUNC10(gspca_dev);
		if (sd->subtype == LogitechClickSmart420)
			FUNC12(gspca_dev,
				spca504A_clicksmart420_open_data,
				FUNC0(spca504A_clicksmart420_open_data));
		else
			FUNC12(gspca_dev, spca504_pccam600_open_data,
				FUNC0(spca504_pccam600_open_data));
		FUNC5(gspca_dev, qtable_creative_pccam);
		break;
	default:
/*	case BRIDGE_SPCA504: */
		FUNC1(D_STREAM, "Opening SPCA504");
		if (sd->subtype == AiptekMiniPenCam13) {
			FUNC9(gspca_dev);

			/* Set AE AWB Banding Type 3-> 50Hz 2-> 60Hz */
			FUNC6(gspca_dev, 0x24,
							8, 3, 0x9e, 1);
			/* Twice sequential need status 0xff->0x9e->0x9d */
			FUNC6(gspca_dev, 0x24,
							8, 3, 0x9e, 0);

			FUNC6(gspca_dev, 0x24,
							0, 0, 0x9d, 1);
			/******************************/
			/* spca504a aiptek */
			FUNC6(gspca_dev, 0x08,
							6, 0, 0x86, 1);
/*			reg_write (dev, 0, 0x2000, 0); */
/*			reg_write (dev, 0, 0x2883, 1); */
/*			spca504A_acknowledged_command (gspca_dev, 0x08,
							6, 0, 0x86, 1); */
/*			spca504A_acknowledged_command (gspca_dev, 0x24,
							0, 0, 0x9D, 1); */
			FUNC4(gspca_dev, 0x00, 0x270c, 0x05);
							/* L92 sno1t.txt */
			FUNC4(gspca_dev, 0x00, 0x2310, 0x05);
			FUNC6(gspca_dev, 0x01,
							0x0f, 0, 0xff, 0);
		}
		/* setup qtable */
		FUNC4(gspca_dev, 0, 0x2000, 0);
		FUNC4(gspca_dev, 0, 0x2883, 1);
		FUNC5(gspca_dev, qtable_spca504_default);
		break;
	}
	return gspca_dev->usb_err;
}