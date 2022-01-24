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
struct usb_ov511 {int subw; int subh; scalar_t__ sensor; int minwidth; int minheight; scalar_t__ compress; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  OV511_RESET_OMNICE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  R511_CAM_LNCNT ; 
 int /*<<< orphan*/  R511_CAM_LNDIV ; 
 int /*<<< orphan*/  R511_CAM_OPTS ; 
 int /*<<< orphan*/  R511_CAM_PXCNT ; 
 int /*<<< orphan*/  R511_CAM_PXDIV ; 
 int /*<<< orphan*/  R511_CAM_UV_EN ; 
 int /*<<< orphan*/  R511_COMP_EN ; 
 int /*<<< orphan*/  R511_COMP_LUT_EN ; 
 int /*<<< orphan*/  R511_SNAP_LNCNT ; 
 int /*<<< orphan*/  R511_SNAP_LNDIV ; 
 int /*<<< orphan*/  R511_SNAP_OPTS ; 
 int /*<<< orphan*/  R511_SNAP_PXCNT ; 
 int /*<<< orphan*/  R511_SNAP_PXDIV ; 
 int /*<<< orphan*/  R511_SNAP_UV_EN ; 
 scalar_t__ SEN_SAA7111A ; 
 int VIDEO_PALETTE_GREY ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usb_ov511*) ; 
 scalar_t__ FUNC4 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ov511*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct usb_ov511 *ov,
		     int width, int height, int mode, int sub_flag)
{
	int hsegs, vsegs;

	if (sub_flag) {
		width = ov->subw;
		height = ov->subh;
	}

	FUNC0(3, "width:%d, height:%d, mode:%d, sub:%d",
	       width, height, mode, sub_flag);

	// FIXME: This should be moved to a 7111a-specific function once
	// subcapture is dealt with properly
	if (ov->sensor == SEN_SAA7111A) {
		if (width == 320 && height == 240) {
			/* No need to do anything special */
		} else if (width == 640 && height == 480) {
			/* Set the OV511 up as 320x480, but keep the
			 * V4L resolution as 640x480 */
			width = 320;
		} else {
			FUNC1("SAA7111A only allows 320x240 or 640x480");
			return -EINVAL;
		}
	}

	/* Make sure width and height are a multiple of 8 */
	if (width % 8 || height % 8) {
		FUNC1("Invalid size (%d, %d) (mode = %d)", width, height, mode);
		return -EINVAL;
	}

	if (width < ov->minwidth || height < ov->minheight) {
		FUNC1("Requested dimensions are too small");
		return -EINVAL;
	}

	if (FUNC4(ov) < 0)
		return -EIO;

	if (mode == VIDEO_PALETTE_GREY) {
		FUNC5(ov, R511_CAM_UV_EN, 0x00);
		FUNC5(ov, R511_SNAP_UV_EN, 0x00);
		FUNC5(ov, R511_SNAP_OPTS, 0x01);
	} else {
		FUNC5(ov, R511_CAM_UV_EN, 0x01);
		FUNC5(ov, R511_SNAP_UV_EN, 0x01);
		FUNC5(ov, R511_SNAP_OPTS, 0x03);
	}

	/* Here I'm assuming that snapshot size == image size.
	 * I hope that's always true. --claudio
	 */
	hsegs = (width >> 3) - 1;
	vsegs = (height >> 3) - 1;

	FUNC5(ov, R511_CAM_PXCNT, hsegs);
	FUNC5(ov, R511_CAM_LNCNT, vsegs);
	FUNC5(ov, R511_CAM_PXDIV, 0x00);
	FUNC5(ov, R511_CAM_LNDIV, 0x00);

	/* YUV420, low pass filter on */
	FUNC5(ov, R511_CAM_OPTS, 0x03);

	/* Snapshot additions */
	FUNC5(ov, R511_SNAP_PXCNT, hsegs);
	FUNC5(ov, R511_SNAP_LNCNT, vsegs);
	FUNC5(ov, R511_SNAP_PXDIV, 0x00);
	FUNC5(ov, R511_SNAP_LNDIV, 0x00);

	if (ov->compress) {
		/* Enable Y and UV quantization and compression */
		FUNC5(ov, R511_COMP_EN, 0x07);
		FUNC5(ov, R511_COMP_LUT_EN, 0x03);
		FUNC2(ov, OV511_RESET_OMNICE);
	}

	if (FUNC3(ov) < 0)
		return -EIO;

	return 0;
}