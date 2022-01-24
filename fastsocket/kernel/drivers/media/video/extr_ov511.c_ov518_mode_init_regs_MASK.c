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
struct usb_ov511 {int subw; int subh; int minwidth; int minheight; scalar_t__ bridge; } ;

/* Variables and functions */
 scalar_t__ BRG_OV518 ; 
 scalar_t__ BRG_OV518PLUS ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  OV511_RESET_NOREGS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,int,int) ; 
 int VIDEO_PALETTE_GREY ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ov511*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ov511*,int,int,int) ; 
 scalar_t__ ov518_color ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ov511*,int,int,int) ; 
 scalar_t__ FUNC5 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct usb_ov511*) ; 
 scalar_t__ FUNC7 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ov511*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_ov511*,int,int,int) ; 

__attribute__((used)) static int
FUNC10(struct usb_ov511 *ov,
		     int width, int height, int mode, int sub_flag)
{
	int hsegs, vsegs, hi_res;

	if (sub_flag) {
		width = ov->subw;
		height = ov->subh;
	}

	FUNC0(3, "width:%d, height:%d, mode:%d, sub:%d",
	       width, height, mode, sub_flag);

	if (width % 16 || height % 8) {
		FUNC1("Invalid size (%d, %d)", width, height);
		return -EINVAL;
	}

	if (width < ov->minwidth || height < ov->minheight) {
		FUNC1("Requested dimensions are too small");
		return -EINVAL;
	}

	if (width >= 320 && height >= 240) {
		hi_res = 1;
	} else if (width >= 320 || height >= 240) {
		FUNC1("Invalid width/height combination (%d, %d)", width, height);
		return -EINVAL;
	} else {
		hi_res = 0;
	}

	if (FUNC7(ov) < 0)
		return -EIO;

	/******** Set the mode ********/

	FUNC8(ov, 0x2b, 0);
	FUNC8(ov, 0x2c, 0);
	FUNC8(ov, 0x2d, 0);
	FUNC8(ov, 0x2e, 0);
	FUNC8(ov, 0x3b, 0);
	FUNC8(ov, 0x3c, 0);
	FUNC8(ov, 0x3d, 0);
	FUNC8(ov, 0x3e, 0);

	if (ov->bridge == BRG_OV518 && ov518_color) {
		/* OV518 needs U and V swapped */
		FUNC3(ov, 0x15, 0x00, 0x01);

		if (mode == VIDEO_PALETTE_GREY) {
			/* Set 16-bit input format (UV data are ignored) */
			FUNC9(ov, 0x20, 0x00, 0x08);

			/* Set 8-bit (4:0:0) output format */
			FUNC9(ov, 0x28, 0x00, 0xf0);
			FUNC9(ov, 0x38, 0x00, 0xf0);
		} else {
			/* Set 8-bit (YVYU) input format */
			FUNC9(ov, 0x20, 0x08, 0x08);

			/* Set 12-bit (4:2:0) output format */
			FUNC9(ov, 0x28, 0x80, 0xf0);
			FUNC9(ov, 0x38, 0x80, 0xf0);
		}
	} else {
		FUNC8(ov, 0x28, (mode == VIDEO_PALETTE_GREY) ? 0x00:0x80);
		FUNC8(ov, 0x38, (mode == VIDEO_PALETTE_GREY) ? 0x00:0x80);
	}

	hsegs = width / 16;
	vsegs = height / 4;

	FUNC8(ov, 0x29, hsegs);
	FUNC8(ov, 0x2a, vsegs);

	FUNC8(ov, 0x39, hsegs);
	FUNC8(ov, 0x3a, vsegs);

	/* Windows driver does this here; who knows why */
	FUNC8(ov, 0x2f, 0x80);

	/******** Set the framerate (to 15 FPS) ********/

	/* Mode independent, but framerate dependent, regs */
	FUNC8(ov, 0x51, 0x02);	/* Clock divider; lower==faster */
	FUNC8(ov, 0x22, 0x18);
	FUNC8(ov, 0x23, 0xff);

	if (ov->bridge == BRG_OV518PLUS)
		FUNC8(ov, 0x21, 0x19);
	else
		FUNC8(ov, 0x71, 0x19);	/* Compression-related? */

	// FIXME: Sensor-specific
	/* Bit 5 is what matters here. Of course, it is "reserved" */
	FUNC2(ov, 0x54, 0x23);

	FUNC8(ov, 0x2f, 0x80);

	if (ov->bridge == BRG_OV518PLUS) {
		FUNC8(ov, 0x24, 0x94);
		FUNC8(ov, 0x25, 0x90);
		FUNC4(ov, 0xc4,    400, 2);	/* 190h   */
		FUNC4(ov, 0xc6,    540, 2);	/* 21ch   */
		FUNC4(ov, 0xc7,    540, 2);	/* 21ch   */
		FUNC4(ov, 0xc8,    108, 2);	/* 6ch    */
		FUNC4(ov, 0xca, 131098, 3);	/* 2001ah */
		FUNC4(ov, 0xcb,    532, 2);	/* 214h   */
		FUNC4(ov, 0xcc,   2400, 2);	/* 960h   */
		FUNC4(ov, 0xcd,     32, 2);	/* 20h    */
		FUNC4(ov, 0xce,    608, 2);	/* 260h   */
	} else {
		FUNC8(ov, 0x24, 0x9f);
		FUNC8(ov, 0x25, 0x90);
		FUNC4(ov, 0xc4,    400, 2);	/* 190h   */
		FUNC4(ov, 0xc6,    500, 2);	/* 1f4h   */
		FUNC4(ov, 0xc7,    500, 2);	/* 1f4h   */
		FUNC4(ov, 0xc8,    142, 2);	/* 8eh    */
		FUNC4(ov, 0xca, 131098, 3);	/* 2001ah */
		FUNC4(ov, 0xcb,    532, 2);	/* 214h   */
		FUNC4(ov, 0xcc,   2000, 2);	/* 7d0h   */
		FUNC4(ov, 0xcd,     32, 2);	/* 20h    */
		FUNC4(ov, 0xce,    608, 2);	/* 260h   */
	}

	FUNC8(ov, 0x2f, 0x80);

	if (FUNC6(ov) < 0)
		return -EIO;

	/* Reset it just for good measure */
	if (FUNC5(ov, OV511_RESET_NOREGS) < 0)
		return -EIO;

	return 0;
}