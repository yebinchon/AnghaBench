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
typedef  int /*<<< orphan*/  u8 ;
struct sd {int flags; scalar_t__ bridge; int image_offset; int sensor; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int* usb_buf; int usb_err; TYPE_2__ cam; } ;
struct TYPE_3__ {scalar_t__ pixelformat; int priv; } ;

/* Variables and functions */
 scalar_t__ BRIDGE_VC0321 ; 
 int FL_SAMSUNG ; 
#define  SENSOR_HV7131R 140 
#define  SENSOR_MI0360 139 
#define  SENSOR_MI1310_SOC 138 
#define  SENSOR_MI1320 137 
#define  SENSOR_MI1320_SOC 136 
#define  SENSOR_OV7660 135 
#define  SENSOR_OV7670 134 
#define  SENSOR_PO1200 133 
#define  SENSOR_PO3130NC 132 
#define  SENSOR_POxxxx 131 
 scalar_t__ V4L2_PIX_FMT_JPEG ; 
 int /*<<< orphan*/ * hv7131r_gamma ; 
 int /*<<< orphan*/ ** hv7131r_initQVGA_data ; 
 int /*<<< orphan*/ ** hv7131r_initVGA_data ; 
 int /*<<< orphan*/ * hv7131r_matrix ; 
 int /*<<< orphan*/ ** mi0360_initQVGA_JPG ; 
 int /*<<< orphan*/ ** mi0360_initVGA_JPG ; 
 int /*<<< orphan*/ * mi0360_matrix ; 
 int /*<<< orphan*/ ** mi1310_soc_InitSXGA_JPG ; 
 int /*<<< orphan*/ ** mi1310_socinitQVGA_JPG ; 
 int /*<<< orphan*/ ** mi1310_socinitVGA_JPG ; 
 int /*<<< orphan*/ * mi1320_gamma ; 
 int /*<<< orphan*/ ** mi1320_initQVGA_data ; 
 int /*<<< orphan*/ ** mi1320_initVGA_data ; 
 int /*<<< orphan*/ * mi1320_matrix ; 
#define  mi1320_soc_InitQVGA 130 
#define  mi1320_soc_InitSXGA 129 
#define  mi1320_soc_InitVGA 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * ov7660_gamma ; 
 int /*<<< orphan*/ ** ov7660_initQVGA_data ; 
 int /*<<< orphan*/ ** ov7660_initVGA_data ; 
 int /*<<< orphan*/ * ov7660_matrix ; 
 int /*<<< orphan*/ ** ov7670_InitQVGA ; 
 int /*<<< orphan*/ ** ov7670_InitVGA ; 
 int /*<<< orphan*/ * po1200_gamma ; 
 int /*<<< orphan*/ ** po1200_initVGA_data ; 
 int /*<<< orphan*/ * po1200_matrix ; 
 int /*<<< orphan*/ * po3130_gamma ; 
 int /*<<< orphan*/ ** po3130_initQVGA_data ; 
 int /*<<< orphan*/ ** po3130_initVGA_data ; 
 int /*<<< orphan*/ * po3130_matrix ; 
 int /*<<< orphan*/ ** po3130_rundata ; 
 int /*<<< orphan*/ ** poxxxx_initQVGA ; 
 int /*<<< orphan*/ ** poxxxx_initVGA ; 
 int /*<<< orphan*/  const** poxxxx_init_common ; 
 int /*<<< orphan*/ ** poxxxx_init_end_1 ; 
 int /*<<< orphan*/  const** poxxxx_init_end_2 ; 
 int /*<<< orphan*/  const** poxxxx_init_start_3 ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct gspca_dev*,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static int FUNC17(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	const u8 (*init)[4];
	const u8 *GammaT = NULL;
	const u8 *MatrixT = NULL;
	int mode;
	static const u8 (*mi1320_soc_init[])[4] = {
		mi1320_soc_InitSXGA,
		mi1320_soc_InitVGA,
		mi1320_soc_InitQVGA,
	};

/*fixme: back sensor only*/
	if (sd->flags & FL_SAMSUNG) {
		FUNC3(gspca_dev, 0x89, 0xf0ff, 0xffff);
		FUNC3(gspca_dev, 0xa9, 0x8348, 0x000e);
		FUNC3(gspca_dev, 0xa9, 0x0000, 0x001a);
	}

	/* Assume start use the good resolution from gspca_dev->mode */
	if (sd->bridge == BRIDGE_VC0321) {
		FUNC3(gspca_dev, 0xa0, 0xff, 0xbfec);
		FUNC3(gspca_dev, 0xa0, 0xff, 0xbfed);
		FUNC3(gspca_dev, 0xa0, 0xff, 0xbfee);
		FUNC3(gspca_dev, 0xa0, 0xff, 0xbfef);
		sd->image_offset = 46;
	} else {
		if (gspca_dev->cam.cam_mode[gspca_dev->curr_mode].pixelformat
				== V4L2_PIX_FMT_JPEG)
			sd->image_offset = 0;
		else
			sd->image_offset = 32;
	}

	mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
	switch (sd->sensor) {
	case SENSOR_HV7131R:
		GammaT = hv7131r_gamma;
		MatrixT = hv7131r_matrix;
		if (mode)
			init = hv7131r_initQVGA_data;	/* 320x240 */
		else
			init = hv7131r_initVGA_data;	/* 640x480 */
		break;
	case SENSOR_OV7660:
		GammaT = ov7660_gamma;
		MatrixT = ov7660_matrix;
		if (mode)
			init = ov7660_initQVGA_data;	/* 320x240 */
		else
			init = ov7660_initVGA_data;	/* 640x480 */
		break;
	case SENSOR_MI0360:
		GammaT = mi1320_gamma;
		MatrixT = mi0360_matrix;
		if (mode)
			init = mi0360_initQVGA_JPG;	/* 320x240 */
		else
			init = mi0360_initVGA_JPG;	/* 640x480 */
		break;
	case SENSOR_MI1310_SOC:
		GammaT = mi1320_gamma;
		MatrixT = mi1320_matrix;
		switch (mode) {
		case 1:
			init = mi1310_socinitQVGA_JPG;	/* 320x240 */
			break;
		case 0:
			init = mi1310_socinitVGA_JPG;	/* 640x480 */
			break;
		default:
			init = mi1310_soc_InitSXGA_JPG;	/* 1280x1024 */
			break;
		}
		break;
	case SENSOR_MI1320:
		GammaT = mi1320_gamma;
		MatrixT = mi1320_matrix;
		if (mode)
			init = mi1320_initQVGA_data;	/* 320x240 */
		else
			init = mi1320_initVGA_data;	/* 640x480 */
		break;
	case SENSOR_MI1320_SOC:
		GammaT = mi1320_gamma;
		MatrixT = mi1320_matrix;
		init = mi1320_soc_init[mode];
		break;
	case SENSOR_OV7670:
		init = mode == 1 ? ov7670_InitVGA : ov7670_InitQVGA;
		break;
	case SENSOR_PO3130NC:
		GammaT = po3130_gamma;
		MatrixT = po3130_matrix;
		if (mode)
			init = po3130_initQVGA_data;	/* 320x240 */
		else
			init = po3130_initVGA_data;	/* 640x480 */
		FUNC16(gspca_dev, init);
		init = po3130_rundata;
		break;
	case SENSOR_PO1200:
		GammaT = po1200_gamma;
		MatrixT = po1200_matrix;
		init = po1200_initVGA_data;
		break;
	default:
/*	case SENSOR_POxxxx: */
		FUNC16(gspca_dev, poxxxx_init_common);
		FUNC11(gspca_dev);
		FUNC5(gspca_dev);
		FUNC6(gspca_dev);
		FUNC8(gspca_dev);
		FUNC7(gspca_dev);
		FUNC14(gspca_dev);
		FUNC4(gspca_dev);
		FUNC9(gspca_dev);
		FUNC10(gspca_dev);
		FUNC16(gspca_dev, poxxxx_init_start_3);
		if (mode)
			init = poxxxx_initQVGA;
		else
			init = poxxxx_initVGA;
		FUNC16(gspca_dev, init);
		FUNC2(gspca_dev, 0x8c, 0x0000, 3);
		FUNC3(gspca_dev, 0xa0,
				gspca_dev->usb_buf[2] & 1 ? 0 : 1,
				0xb35c);
		FUNC0(300);
/*fixme: i2c read 04 and 05*/
		init = poxxxx_init_end_1;
		break;
	}
	FUNC16(gspca_dev, init);
	if (GammaT && MatrixT) {
		FUNC1(gspca_dev, GammaT, 17, 0xb84a);
		FUNC1(gspca_dev, GammaT, 17, 0xb85b);
		FUNC1(gspca_dev, GammaT, 17, 0xb86c);
		FUNC1(gspca_dev, MatrixT, 9, 0xb82c);

		switch (sd->sensor) {
		case SENSOR_PO1200:
		case SENSOR_HV7131R:
			FUNC3(gspca_dev, 0x89, 0x0400, 0x1415);
			break;
		case SENSOR_MI1310_SOC:
			FUNC3(gspca_dev, 0x89, 0x058c, 0x0000);
			break;
		}
		FUNC0(100);
		FUNC12(gspca_dev);
		FUNC13(gspca_dev);
	}
	switch (sd->sensor) {
	case SENSOR_OV7670:
		FUNC3(gspca_dev, 0x87, 0xffff, 0xffff);
		FUNC3(gspca_dev, 0x88, 0xff00, 0xf0f1);
		FUNC3(gspca_dev, 0xa0, 0x0000, 0xbfff);
		break;
	case SENSOR_POxxxx:
		FUNC16(gspca_dev, poxxxx_init_end_2);
		FUNC15(gspca_dev);
		FUNC0(80);		/* led on */
		FUNC3(gspca_dev, 0x89, 0xffff, 0xfdff);
		break;
	}
	return gspca_dev->usb_err;
}