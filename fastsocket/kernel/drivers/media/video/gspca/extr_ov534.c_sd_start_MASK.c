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
struct gspca_dev {size_t curr_mode; int usb_err; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bridge_start_qvga ; 
 int /*<<< orphan*/  bridge_start_vga ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sensor_start_qvga ; 
 int /*<<< orphan*/  sensor_start_vga ; 
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
 int /*<<< orphan*/  FUNC16 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC17(struct gspca_dev *gspca_dev)
{
	int mode;

	mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
	if (mode != 0) {	/* 320x240 */
		FUNC3(gspca_dev, bridge_start_qvga,
				FUNC0(bridge_start_qvga));
		FUNC4(gspca_dev, sensor_start_qvga,
				FUNC0(sensor_start_qvga));
	} else {		/* 640x480 */
		FUNC3(gspca_dev, bridge_start_vga,
				FUNC0(bridge_start_vga));
		FUNC4(gspca_dev, sensor_start_vga,
				FUNC0(sensor_start_vga));
	}
	FUNC5(gspca_dev);

	FUNC7(gspca_dev);
	FUNC8(gspca_dev);
	FUNC6(gspca_dev);
	FUNC13(gspca_dev);
	FUNC11(gspca_dev);
	FUNC9(gspca_dev);
	FUNC10(gspca_dev);
	FUNC15(gspca_dev);
	FUNC16(gspca_dev);
	FUNC14(gspca_dev);
	FUNC12(gspca_dev);

	FUNC2(gspca_dev, 1);
	FUNC1(gspca_dev, 0xe0, 0x00);
	return gspca_dev->usb_err;
}