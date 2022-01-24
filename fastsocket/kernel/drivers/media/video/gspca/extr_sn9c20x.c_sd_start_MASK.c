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
typedef  int u8 ;
struct sd {int /*<<< orphan*/  vstart; int /*<<< orphan*/  hstart; int /*<<< orphan*/ * jpeg_hdr; int /*<<< orphan*/  quality; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {int width; int height; int* usb_buf; scalar_t__ curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t JPEG_QT0_OFFSET ; 
 size_t JPEG_QT1_OFFSET ; 
 int MODE_JPEG ; 
 int MODE_RAW ; 
#define  SCALE_1280x1024 131 
#define  SCALE_160x120 130 
#define  SCALE_320x240 129 
#define  SCALE_640x480 128 
 int SCALE_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC15(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
	int width = gspca_dev->width;
	int height = gspca_dev->height;
	u8 fmt, scale = 0;

	FUNC4(sd->jpeg_hdr, height, width,
			0x21);
	FUNC5(sd->jpeg_hdr, sd->quality);

	if (mode & MODE_RAW)
		fmt = 0x2d;
	else if (mode & MODE_JPEG)
		fmt = 0x2c;
	else
		fmt = 0x2f;	/* YUV 420 */

	switch (mode & SCALE_MASK) {
	case SCALE_1280x1024:
		scale = 0xc0;
		FUNC3("Set 1280x1024");
		break;
	case SCALE_640x480:
		scale = 0x80;
		FUNC3("Set 640x480");
		break;
	case SCALE_320x240:
		scale = 0x90;
		FUNC3("Set 320x240");
		break;
	case SCALE_160x120:
		scale = 0xa0;
		FUNC3("Set 160x120");
		break;
	}

	FUNC2(gspca_dev, mode);
	FUNC7(gspca_dev, 0x1100, &sd->jpeg_hdr[JPEG_QT0_OFFSET], 64);
	FUNC7(gspca_dev, 0x1140, &sd->jpeg_hdr[JPEG_QT1_OFFSET], 64);
	FUNC7(gspca_dev, 0x10fb, FUNC0(width, height), 5);
	FUNC7(gspca_dev, 0x1180, FUNC1(mode, sd->hstart, sd->vstart), 6);
	FUNC8(gspca_dev, 0x1189, scale);
	FUNC8(gspca_dev, 0x10e0, fmt);

	FUNC9(gspca_dev);
	FUNC12(gspca_dev);
	FUNC14(gspca_dev);
	FUNC11(gspca_dev);
	FUNC10(gspca_dev);
	FUNC13(gspca_dev);

	FUNC8(gspca_dev, 0x1007, 0x20);

	FUNC6(gspca_dev, 0x1061, 1);
	FUNC8(gspca_dev, 0x1061, gspca_dev->usb_buf[0] | 0x02);
	return 0;
}