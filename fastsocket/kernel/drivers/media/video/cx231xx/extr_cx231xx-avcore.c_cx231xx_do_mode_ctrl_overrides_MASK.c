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
struct cx231xx {int norm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFE_CTRL3 ; 
 int /*<<< orphan*/  FLD_HBLANK_CNT ; 
 int /*<<< orphan*/  FLD_V656BLANK_CNT ; 
 int /*<<< orphan*/  FLD_VACTIVE_CNT ; 
 int /*<<< orphan*/  FLD_VBLANK_CNT ; 
 int /*<<< orphan*/  HORIZ_TIM_CTRL ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_PAL_M ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  VERT_TIM_CTRL ; 
 int /*<<< orphan*/  VID_BLK_I2C_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct cx231xx *dev)
{
	int status = 0;

	FUNC0("do_mode_ctrl_overrides : 0x%x\n",
		     (unsigned int)dev->norm);

	/* Change the DFE_CTRL3 bp_percent to fix flagging */
	status = FUNC3(dev, DFE_CTRL3, 0xCD3F0280);

	if (dev->norm & (V4L2_STD_NTSC | V4L2_STD_PAL_M)) {
		FUNC0("do_mode_ctrl_overrides NTSC\n");

		/* Move the close caption lines out of active video,
		   adjust the active video start point */
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_VBLANK_CNT, 0x18);
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_VACTIVE_CNT,
							0x1E7000);
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_V656BLANK_CNT,
							0x1C000000);

		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							HORIZ_TIM_CTRL,
							FLD_HBLANK_CNT,
							FUNC2
							(FLD_HBLANK_CNT, 0x79));

	} else if (dev->norm & V4L2_STD_SECAM) {
		FUNC0("do_mode_ctrl_overrides SECAM\n");
		status =  FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_VBLANK_CNT, 0x20);
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_VACTIVE_CNT,
							FUNC2
							(FLD_VACTIVE_CNT,
							 0x244));
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_V656BLANK_CNT,
							FUNC2
							(FLD_V656BLANK_CNT,
							0x24));
		/* Adjust the active video horizontal start point */
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							HORIZ_TIM_CTRL,
							FLD_HBLANK_CNT,
							FUNC2
							(FLD_HBLANK_CNT, 0x85));
	} else {
		FUNC0("do_mode_ctrl_overrides PAL\n");
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_VBLANK_CNT, 0x20);
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_VACTIVE_CNT,
							FUNC2
							(FLD_VACTIVE_CNT,
							 0x244));
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							VERT_TIM_CTRL,
							FLD_V656BLANK_CNT,
							FUNC2
							(FLD_V656BLANK_CNT,
							0x24));
		/* Adjust the active video horizontal start point */
		status = FUNC1(dev,
							VID_BLK_I2C_ADDRESS,
							HORIZ_TIM_CTRL,
							FLD_HBLANK_CNT,
							FUNC2
							(FLD_HBLANK_CNT, 0x85));

	}

	return status;
}