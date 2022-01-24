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
struct sd {int sof_len; int lighting; } ;
struct gspca_dev {int width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int clock_div = 0;

	FUNC2(gspca_dev, 0x0000, 0x0100);	/* LED on */
	FUNC1(gspca_dev, 0x0116, 0);
	FUNC2(gspca_dev, 0x0060, 0x0116);
	FUNC2(gspca_dev, 0x0002, 0x0112);
	FUNC2(gspca_dev, 0x00bc, 0x012c);
	FUNC2(gspca_dev, 0x0008, 0x012b);
	FUNC2(gspca_dev, 0x0000, 0x0108);
	FUNC2(gspca_dev, 0x0001, 0x0133);
	FUNC2(gspca_dev, 0x0001, 0x0102);
	switch (gspca_dev->width) {
	case 176: /* 176x144 */
		FUNC2(gspca_dev, 0x002c, 0x0103);	/* All except 320x240 */
		FUNC2(gspca_dev, 0x0000, 0x0104);	/* Same */
		FUNC2(gspca_dev, 0x0024, 0x0105);	/* 176x144, 352x288 */
		FUNC2(gspca_dev, 0x00b9, 0x010a);	/* Unique to this mode */
		FUNC2(gspca_dev, 0x0038, 0x0119);	/* Unique to this mode */
		/* TESTME HDG: this does not seem right
		   (it is 2 for all other resolutions) */
		sd->sof_len = 10;
		break;
	case 320: /* 320x240 */
		FUNC2(gspca_dev, 0x0028, 0x0103);	/* Unique to this mode */
		FUNC2(gspca_dev, 0x0000, 0x0104);	/* Same */
		FUNC2(gspca_dev, 0x001e, 0x0105);	/* 320x240, 352x240 */
		FUNC2(gspca_dev, 0x0039, 0x010a);	/* All except 176x144 */
		FUNC2(gspca_dev, 0x0070, 0x0119);	/* All except 176x144 */
		sd->sof_len = 2;
		break;
	/* case VIDEOSIZE_352x240: */
		FUNC2(gspca_dev, 0x002c, 0x0103);	/* All except 320x240 */
		FUNC2(gspca_dev, 0x0000, 0x0104);	/* Same */
		FUNC2(gspca_dev, 0x001e, 0x0105);	/* 320x240, 352x240 */
		FUNC2(gspca_dev, 0x0039, 0x010a);	/* All except 176x144 */
		FUNC2(gspca_dev, 0x0070, 0x0119);	/* All except 176x144 */
		sd->sof_len = 2;
		break;
	case 352: /* 352x288 */
		FUNC2(gspca_dev, 0x002c, 0x0103);	/* All except 320x240 */
		FUNC2(gspca_dev, 0x0000, 0x0104);	/* Same */
		FUNC2(gspca_dev, 0x0024, 0x0105);	/* 176x144, 352x288 */
		FUNC2(gspca_dev, 0x0039, 0x010a);	/* All except 176x144 */
		FUNC2(gspca_dev, 0x0070, 0x0119);	/* All except 176x144 */
		sd->sof_len = 2;
		break;
	}

	FUNC2(gspca_dev, 0x0000, 0x0100);	/* LED on */

	switch (gspca_dev->width) {
	case 176: /* 176x144 */
		FUNC2(gspca_dev, 0x0050, 0x0111);
		FUNC2(gspca_dev, 0x00d0, 0x0111);
		break;
	case 320: /* 320x240 */
	case 352: /* 352x288 */
		FUNC2(gspca_dev, 0x0040, 0x0111);
		FUNC2(gspca_dev, 0x00c0, 0x0111);
		break;
	}
	FUNC2(gspca_dev, 0x009b, 0x010f);
	FUNC2(gspca_dev, 0x00bb, 0x010f);

	/*
	 * Hardware settings, may affect CMOS sensor; not user controls!
	 * -------------------------------------------------------------
	 * 0x0004: no effect
	 * 0x0006: hardware effect
	 * 0x0008: no effect
	 * 0x000a: stops video stream, probably important h/w setting
	 * 0x000c: changes color in hardware manner (not user setting)
	 * 0x0012: changes number of colors (does not affect speed)
	 * 0x002a: no effect
	 * 0x002c: hardware setting (related to scan lines)
	 * 0x002e: stops video stream, probably important h/w setting
	 */
	FUNC0(gspca_dev, 0x000a, 0x005c);
	FUNC0(gspca_dev, 0x0004, 0x0000);
	FUNC0(gspca_dev, 0x0006, 0x00fb);
	FUNC0(gspca_dev, 0x0008, 0x0000);
	FUNC0(gspca_dev, 0x000c, 0x0009);
	FUNC0(gspca_dev, 0x0012, 0x000a);
	FUNC0(gspca_dev, 0x002a, 0x0000);
	FUNC0(gspca_dev, 0x002c, 0x0000);
	FUNC0(gspca_dev, 0x002e, 0x0008);

	/*
	 * Function 0x0030 pops up all over the place. Apparently
	 * it is a hardware control register, with every bit assigned to
	 * do something.
	 */
	FUNC0(gspca_dev, 0x0030, 0x0000);

	/*
	 * Magic control of CMOS sensor. Only lower values like
	 * 0-3 work, and picture shifts left or right. Don't change.
	 */
	switch (gspca_dev->width) {
	case 176: /* 176x144 */
		FUNC0(gspca_dev, 0x0014, 0x0002);
		FUNC0(gspca_dev, 0x0016, 0x0002); /* Horizontal shift */
		FUNC0(gspca_dev, 0x0018, 0x004a); /* Another hardware setting */
		clock_div = 6;
		break;
	case 320: /* 320x240 */
		FUNC0(gspca_dev, 0x0014, 0x0009);
		FUNC0(gspca_dev, 0x0016, 0x0005); /* Horizontal shift */
		FUNC0(gspca_dev, 0x0018, 0x0044); /* Another hardware setting */
		clock_div = 8;
		break;
	/* case VIDEOSIZE_352x240: */
		/* This mode doesn't work as Windows programs it; changed to work */
		FUNC0(gspca_dev, 0x0014, 0x0009); /* Windows sets this to 8 */
		FUNC0(gspca_dev, 0x0016, 0x0003); /* Horizontal shift */
		FUNC0(gspca_dev, 0x0018, 0x0044); /* Windows sets this to 0x0045 */
		clock_div = 10;
		break;
	case 352: /* 352x288 */
		FUNC0(gspca_dev, 0x0014, 0x0003);
		FUNC0(gspca_dev, 0x0016, 0x0002); /* Horizontal shift */
		FUNC0(gspca_dev, 0x0018, 0x004a); /* Another hardware setting */
		clock_div = 16;
		break;
	}

	/* TESTME These are handled through controls
	   KEEP until someone can test leaving this out is ok */
	if (0)
		FUNC0(gspca_dev, 0x001a, 0x005a);

	/*
	 * We have our own frame rate setting varying from 0 (slowest) to 6
	 * (fastest). The camera model 2 allows frame rate in range [0..0x1F]
	 # where 0 is also the slowest setting. However for all practical
	 # reasons high settings make no sense because USB is not fast enough
	 # to support high FPS. Be aware that the picture datastream will be
	 # severely disrupted if you ask for frame rate faster than allowed
	 # for the video size - see below:
	 *
	 * Allowable ranges (obtained experimentally on OHCI, K6-3, 450 MHz):
	 * -----------------------------------------------------------------
	 * 176x144: [6..31]
	 * 320x240: [8..31]
	 * 352x240: [10..31]
	 * 352x288: [16..31] I have to raise lower threshold for stability...
	 *
	 * As usual, slower FPS provides better sensitivity.
	 */
	FUNC0(gspca_dev, 0x001c, clock_div);

	/*
	 * This setting does not visibly affect pictures; left it here
	 * because it was present in Windows USB data stream. This function
	 * does not allow arbitrary values and apparently is a bit mask, to
	 * be activated only at appropriate time. Don't change it randomly!
	 */
	switch (gspca_dev->width) {
	case 176: /* 176x144 */
		FUNC0(gspca_dev, 0x0026, 0x00c2);
		break;
	case 320: /* 320x240 */
		FUNC0(gspca_dev, 0x0026, 0x0044);
		break;
	/* case VIDEOSIZE_352x240: */
		FUNC0(gspca_dev, 0x0026, 0x0046);
		break;
	case 352: /* 352x288 */
		FUNC0(gspca_dev, 0x0026, 0x0048);
		break;
	}

	/* FIXME this cannot be changed while streaming, so we
	   should report a grabbed flag for this control. */
	FUNC0(gspca_dev, 0x0028, sd->lighting);
	/* color balance rg2 */
	FUNC0(gspca_dev, 0x001e, 0x002f);
	/* saturation */
	FUNC0(gspca_dev, 0x0020, 0x0034);
	/* color balance yb */
	FUNC0(gspca_dev, 0x0022, 0x00a0);

	/* Hardware control command */
	FUNC0(gspca_dev, 0x0030, 0x0004);

	return 0;
}