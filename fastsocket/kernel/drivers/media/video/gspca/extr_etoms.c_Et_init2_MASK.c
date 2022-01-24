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
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef  int __u8 ;
struct TYPE_3__ {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int ET_COMP ; 
 int ET_COMP_VAL0 ; 
 int ET_COMP_VAL1 ; 
 int ET_CTRL ; 
 int ET_ClCK ; 
 int ET_GPIO_DIR_CTRL ; 
 int /*<<< orphan*/  ET_GPIO_IN ; 
 int ET_GPIO_OUT ; 
 int ET_G_BLUE ; 
 int ET_G_GB_H ; 
 int ET_G_GREEN1 ; 
 int ET_G_GREEN2 ; 
 int ET_G_GR_H ; 
 int ET_G_RED ; 
 int ET_HEIGTH_LOW ; 
 int ET_MAXQt ; 
 int ET_MINQt ; 
 int ET_O_BLUE ; 
 int ET_O_GREEN1 ; 
 int ET_O_GREEN2 ; 
 int ET_O_RED ; 
 int ET_PXL_CLK ; 
 int ET_REG1d ; 
 int ET_REG1e ; 
 int ET_REG1f ; 
 int ET_REG20 ; 
 int ET_REG21 ; 
 int ET_REG22 ; 
 int ET_REG23 ; 
 int ET_REG24 ; 
 int ET_REG25 ; 
 int ET_REG6e ; 
 int ET_REG6f ; 
 int ET_REG70 ; 
 int ET_REG71 ; 
 int ET_REG72 ; 
 int ET_REG73 ; 
 int ET_REG74 ; 
 int ET_REG75 ; 
 int ET_STARTX ; 
 int ET_STARTY ; 
 int ET_SYNCHRO ; 
 int ET_WIDTH_LOW ; 
 int ET_W_H_HEIGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	__u8 value;
	static const __u8 FormLine[] = { 0x84, 0x03, 0x14, 0xf4, 0x01, 0x05 };

	FUNC0(D_STREAM, "Open Init2 ET");
	FUNC3(gspca_dev, ET_GPIO_DIR_CTRL, 0x2f);
	FUNC3(gspca_dev, ET_GPIO_OUT, 0x10);
	FUNC1(gspca_dev, ET_GPIO_IN, 1);
	FUNC3(gspca_dev, ET_ClCK, 0x14); /* 0x14 // 0x16 enabled pattern */
	FUNC3(gspca_dev, ET_CTRL, 0x1b);

	/*  compression et subsampling */
	if (gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv)
		value = ET_COMP_VAL1;	/* 320 */
	else
		value = ET_COMP_VAL0;	/* 640 */
	FUNC3(gspca_dev, ET_COMP, value);
	FUNC3(gspca_dev, ET_MAXQt, 0x1f);
	FUNC3(gspca_dev, ET_MINQt, 0x04);
	/* undocumented registers */
	FUNC3(gspca_dev, ET_REG1d, 0xff);
	FUNC3(gspca_dev, ET_REG1e, 0xff);
	FUNC3(gspca_dev, ET_REG1f, 0xff);
	FUNC3(gspca_dev, ET_REG20, 0x35);
	FUNC3(gspca_dev, ET_REG21, 0x01);
	FUNC3(gspca_dev, ET_REG22, 0x00);
	FUNC3(gspca_dev, ET_REG23, 0xff);
	FUNC3(gspca_dev, ET_REG24, 0xff);
	FUNC3(gspca_dev, ET_REG25, 0x0f);
	/* colors setting */
	FUNC3(gspca_dev, 0x30, 0x11);		/* 0x30 */
	FUNC3(gspca_dev, 0x31, 0x40);
	FUNC3(gspca_dev, 0x32, 0x00);
	FUNC3(gspca_dev, ET_O_RED, 0x00);		/* 0x34 */
	FUNC3(gspca_dev, ET_O_GREEN1, 0x00);
	FUNC3(gspca_dev, ET_O_BLUE, 0x00);
	FUNC3(gspca_dev, ET_O_GREEN2, 0x00);
	/*************/
	FUNC3(gspca_dev, ET_G_RED, 0x80);		/* 0x4d */
	FUNC3(gspca_dev, ET_G_GREEN1, 0x80);
	FUNC3(gspca_dev, ET_G_BLUE, 0x80);
	FUNC3(gspca_dev, ET_G_GREEN2, 0x80);
	FUNC3(gspca_dev, ET_G_GR_H, 0x00);
	FUNC3(gspca_dev, ET_G_GB_H, 0x00);		/* 0x52 */
	/* Window control registers */
	FUNC3(gspca_dev, 0x61, 0x80);		/* use cmc_out */
	FUNC3(gspca_dev, 0x62, 0x02);
	FUNC3(gspca_dev, 0x63, 0x03);
	FUNC3(gspca_dev, 0x64, 0x14);
	FUNC3(gspca_dev, 0x65, 0x0e);
	FUNC3(gspca_dev, 0x66, 0x02);
	FUNC3(gspca_dev, 0x67, 0x02);

	/**************************************/
	FUNC3(gspca_dev, ET_SYNCHRO, 0x8f);		/* 0x68 */
	FUNC3(gspca_dev, ET_STARTX, 0x69);		/* 0x6a //0x69 */
	FUNC3(gspca_dev, ET_STARTY, 0x0d);		/* 0x0d //0x0c */
	FUNC3(gspca_dev, ET_WIDTH_LOW, 0x80);
	FUNC3(gspca_dev, ET_HEIGTH_LOW, 0xe0);
	FUNC3(gspca_dev, ET_W_H_HEIGTH, 0x60);	/* 6d */
	FUNC3(gspca_dev, ET_REG6e, 0x86);
	FUNC3(gspca_dev, ET_REG6f, 0x01);
	FUNC3(gspca_dev, ET_REG70, 0x26);
	FUNC3(gspca_dev, ET_REG71, 0x7a);
	FUNC3(gspca_dev, ET_REG72, 0x01);
	/* Clock Pattern registers ***************** */
	FUNC3(gspca_dev, ET_REG73, 0x00);
	FUNC3(gspca_dev, ET_REG74, 0x18);		/* 0x28 */
	FUNC3(gspca_dev, ET_REG75, 0x0f);		/* 0x01 */
	/**********************************************/
	FUNC3(gspca_dev, 0x8a, 0x20);
	FUNC3(gspca_dev, 0x8d, 0x0f);
	FUNC3(gspca_dev, 0x8e, 0x08);
	/**************************************/
	FUNC3(gspca_dev, 0x03, 0x08);
	FUNC3(gspca_dev, ET_PXL_CLK, 0x03);
	FUNC3(gspca_dev, 0x81, 0xff);
	FUNC3(gspca_dev, 0x80, 0x00);
	FUNC3(gspca_dev, 0x81, 0xff);
	FUNC3(gspca_dev, 0x80, 0x20);
	FUNC3(gspca_dev, 0x03, 0x01);
	FUNC3(gspca_dev, 0x03, 0x00);
	FUNC3(gspca_dev, 0x03, 0x08);
	/********************************************/

/*	reg_r(gspca_dev, ET_I2C_BASE, 1);
					 always 0x40 as the pas106 ??? */
	/* set the sensor */
	if (gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv)
		value = 0x04;		/* 320 */
	else				/* 640 */
		value = 0x1e;	/* 0x17	 * setting PixelClock
					 * 0x03 mean 24/(3+1) = 6 Mhz
					 * 0x05 -> 24/(5+1) = 4 Mhz
					 * 0x0b -> 24/(11+1) = 2 Mhz
					 * 0x17 -> 24/(23+1) = 1 Mhz
					 */
	FUNC3(gspca_dev, ET_PXL_CLK, value);
	/* now set by fifo the FormatLine setting */
	FUNC2(gspca_dev, 0x62, FormLine, 6);

	/* set exposure times [ 0..0x78] 0->longvalue 0x78->shortvalue */
	FUNC3(gspca_dev, 0x81, 0x47);	/* 0x47; */
	FUNC3(gspca_dev, 0x80, 0x40);	/* 0x40; */
	/* Pedro change */
	/* Brightness change Brith+ decrease value */
	/* Brigth- increase value */
	/* original value = 0x70; */
	FUNC3(gspca_dev, 0x81, 0x30);	/* 0x20; - set brightness */
	FUNC3(gspca_dev, 0x80, 0x20);	/* 0x20; */
}