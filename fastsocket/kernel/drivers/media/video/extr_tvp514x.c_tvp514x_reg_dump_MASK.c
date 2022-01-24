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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_AFE_GAIN_CTRL ; 
 int /*<<< orphan*/  REG_AVID_START_PIXEL_LSB ; 
 int /*<<< orphan*/  REG_AVID_START_PIXEL_MSB ; 
 int /*<<< orphan*/  REG_AVID_STOP_PIXEL_LSB ; 
 int /*<<< orphan*/  REG_AVID_STOP_PIXEL_MSB ; 
 int /*<<< orphan*/  REG_BRIGHTNESS ; 
 int /*<<< orphan*/  REG_CHROMA_CONTROL1 ; 
 int /*<<< orphan*/  REG_CHROMA_CONTROL2 ; 
 int /*<<< orphan*/  REG_CLEAR_LOST_LOCK ; 
 int /*<<< orphan*/  REG_COLOR_KILLER ; 
 int /*<<< orphan*/  REG_COMP_PB_SATURATION ; 
 int /*<<< orphan*/  REG_COMP_PR_SATURATION ; 
 int /*<<< orphan*/  REG_COMP_Y_BRIGHTNESS ; 
 int /*<<< orphan*/  REG_COMP_Y_CONTRAST ; 
 int /*<<< orphan*/  REG_CONTRAST ; 
 int /*<<< orphan*/  REG_HSYNC_START_PIXEL_LSB ; 
 int /*<<< orphan*/  REG_HSYNC_START_PIXEL_MSB ; 
 int /*<<< orphan*/  REG_HSYNC_STOP_PIXEL_LSB ; 
 int /*<<< orphan*/  REG_HSYNC_STOP_PIXEL_MSB ; 
 int /*<<< orphan*/  REG_HUE ; 
 int /*<<< orphan*/  REG_INPUT_SEL ; 
 int /*<<< orphan*/  REG_LUMA_CONTROL1 ; 
 int /*<<< orphan*/  REG_LUMA_CONTROL2 ; 
 int /*<<< orphan*/  REG_LUMA_CONTROL3 ; 
 int /*<<< orphan*/  REG_OPERATION_MODE ; 
 int /*<<< orphan*/  REG_OUTPUT_FORMATTER1 ; 
 int /*<<< orphan*/  REG_OUTPUT_FORMATTER2 ; 
 int /*<<< orphan*/  REG_OUTPUT_FORMATTER3 ; 
 int /*<<< orphan*/  REG_OUTPUT_FORMATTER4 ; 
 int /*<<< orphan*/  REG_OUTPUT_FORMATTER5 ; 
 int /*<<< orphan*/  REG_OUTPUT_FORMATTER6 ; 
 int /*<<< orphan*/  REG_SATURATION ; 
 int /*<<< orphan*/  REG_SYNC_CONTROL ; 
 int /*<<< orphan*/  REG_VBLK_START_LINE_LSB ; 
 int /*<<< orphan*/  REG_VBLK_START_LINE_MSB ; 
 int /*<<< orphan*/  REG_VBLK_STOP_LINE_LSB ; 
 int /*<<< orphan*/  REG_VBLK_STOP_LINE_MSB ; 
 int /*<<< orphan*/  REG_VIDEO_STD ; 
 int /*<<< orphan*/  REG_VSYNC_START_LINE_LSB ; 
 int /*<<< orphan*/  REG_VSYNC_START_LINE_MSB ; 
 int /*<<< orphan*/  REG_VSYNC_STOP_LINE_LSB ; 
 int /*<<< orphan*/  REG_VSYNC_STOP_LINE_MSB ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct v4l2_subdev *sd)
{
	FUNC0(sd, REG_INPUT_SEL);
	FUNC0(sd, REG_AFE_GAIN_CTRL);
	FUNC0(sd, REG_VIDEO_STD);
	FUNC0(sd, REG_OPERATION_MODE);
	FUNC0(sd, REG_COLOR_KILLER);
	FUNC0(sd, REG_LUMA_CONTROL1);
	FUNC0(sd, REG_LUMA_CONTROL2);
	FUNC0(sd, REG_LUMA_CONTROL3);
	FUNC0(sd, REG_BRIGHTNESS);
	FUNC0(sd, REG_CONTRAST);
	FUNC0(sd, REG_SATURATION);
	FUNC0(sd, REG_HUE);
	FUNC0(sd, REG_CHROMA_CONTROL1);
	FUNC0(sd, REG_CHROMA_CONTROL2);
	FUNC0(sd, REG_COMP_PR_SATURATION);
	FUNC0(sd, REG_COMP_Y_CONTRAST);
	FUNC0(sd, REG_COMP_PB_SATURATION);
	FUNC0(sd, REG_COMP_Y_BRIGHTNESS);
	FUNC0(sd, REG_AVID_START_PIXEL_LSB);
	FUNC0(sd, REG_AVID_START_PIXEL_MSB);
	FUNC0(sd, REG_AVID_STOP_PIXEL_LSB);
	FUNC0(sd, REG_AVID_STOP_PIXEL_MSB);
	FUNC0(sd, REG_HSYNC_START_PIXEL_LSB);
	FUNC0(sd, REG_HSYNC_START_PIXEL_MSB);
	FUNC0(sd, REG_HSYNC_STOP_PIXEL_LSB);
	FUNC0(sd, REG_HSYNC_STOP_PIXEL_MSB);
	FUNC0(sd, REG_VSYNC_START_LINE_LSB);
	FUNC0(sd, REG_VSYNC_START_LINE_MSB);
	FUNC0(sd, REG_VSYNC_STOP_LINE_LSB);
	FUNC0(sd, REG_VSYNC_STOP_LINE_MSB);
	FUNC0(sd, REG_VBLK_START_LINE_LSB);
	FUNC0(sd, REG_VBLK_START_LINE_MSB);
	FUNC0(sd, REG_VBLK_STOP_LINE_LSB);
	FUNC0(sd, REG_VBLK_STOP_LINE_MSB);
	FUNC0(sd, REG_SYNC_CONTROL);
	FUNC0(sd, REG_OUTPUT_FORMATTER1);
	FUNC0(sd, REG_OUTPUT_FORMATTER2);
	FUNC0(sd, REG_OUTPUT_FORMATTER3);
	FUNC0(sd, REG_OUTPUT_FORMATTER4);
	FUNC0(sd, REG_OUTPUT_FORMATTER5);
	FUNC0(sd, REG_OUTPUT_FORMATTER6);
	FUNC0(sd, REG_CLEAR_LOST_LOCK);
}