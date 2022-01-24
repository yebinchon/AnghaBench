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
struct gspca_dev {int curr_mode; int usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  QVGA_MODE 131 
#define  SVGA_MODE 130 
#define  VGA_MODE 129 
#define  XGA_MODE 128 
 int /*<<< orphan*/  bridge_start_qvga ; 
 int /*<<< orphan*/  bridge_start_svga ; 
 int /*<<< orphan*/  bridge_start_sxga ; 
 int /*<<< orphan*/  bridge_start_vga ; 
 int /*<<< orphan*/  bridge_start_xga ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sensor_start_1_svga ; 
 int /*<<< orphan*/  sensor_start_1_sxga ; 
 int /*<<< orphan*/  sensor_start_1_vga ; 
 int /*<<< orphan*/  sensor_start_1_xga ; 
 int /*<<< orphan*/  sensor_start_2_qvga ; 
 int /*<<< orphan*/  sensor_start_2_svga ; 
 int /*<<< orphan*/  sensor_start_2_sxga ; 
 int /*<<< orphan*/  sensor_start_2_vga ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC12(struct gspca_dev *gspca_dev)
{
	switch (gspca_dev->curr_mode) {
	case QVGA_MODE:			/* 320x240 */
		FUNC3(gspca_dev, sensor_start_1_vga,
				FUNC0(sensor_start_1_vga));
		FUNC2(gspca_dev, bridge_start_qvga,
				FUNC0(bridge_start_qvga));
		FUNC3(gspca_dev, sensor_start_2_qvga,
				FUNC0(sensor_start_2_qvga));
		break;
	case VGA_MODE:			/* 640x480 */
		FUNC3(gspca_dev, sensor_start_1_vga,
				FUNC0(sensor_start_1_vga));
		FUNC2(gspca_dev, bridge_start_vga,
				FUNC0(bridge_start_vga));
		FUNC3(gspca_dev, sensor_start_2_vga,
				FUNC0(sensor_start_2_vga));
		break;
	case SVGA_MODE:			/* 800x600 */
		FUNC3(gspca_dev, sensor_start_1_svga,
				FUNC0(sensor_start_1_svga));
		FUNC2(gspca_dev, bridge_start_svga,
				FUNC0(bridge_start_svga));
		FUNC3(gspca_dev, sensor_start_2_svga,
				FUNC0(sensor_start_2_svga));
		break;
	case XGA_MODE:			/* 1024x768 */
		FUNC3(gspca_dev, sensor_start_1_xga,
				FUNC0(sensor_start_1_xga));
		FUNC2(gspca_dev, bridge_start_xga,
				FUNC0(bridge_start_xga));
		FUNC3(gspca_dev, sensor_start_2_svga,
				FUNC0(sensor_start_2_svga));
		break;
	default:
/*	case SXGA_MODE:			 * 1280x1024 */
		FUNC3(gspca_dev, sensor_start_1_sxga,
				FUNC0(sensor_start_1_sxga));
		FUNC2(gspca_dev, bridge_start_sxga,
				FUNC0(bridge_start_sxga));
		FUNC3(gspca_dev, sensor_start_2_sxga,
				FUNC0(sensor_start_2_sxga));
		break;
	}
	FUNC9(gspca_dev);
	FUNC5(gspca_dev);
	FUNC6(gspca_dev);
	FUNC7(gspca_dev);
	FUNC8(gspca_dev);
	FUNC11(gspca_dev);
	FUNC10(gspca_dev);

	FUNC1(gspca_dev, 0xe0, 0x00);
	FUNC1(gspca_dev, 0xe0, 0x00);
	FUNC4(gspca_dev, 1);
	return gspca_dev->usb_err;
}