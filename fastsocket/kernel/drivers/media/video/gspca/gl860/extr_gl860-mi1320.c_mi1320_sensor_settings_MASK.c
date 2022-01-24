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
typedef  size_t s32 ;
struct TYPE_3__ {size_t priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  IMAGE_1280 129 
#define  IMAGE_800 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** tbl_1280 ; 
 int /*<<< orphan*/ ** tbl_640 ; 
 int /*<<< orphan*/ ** tbl_800 ; 
 int /*<<< orphan*/  tbl_sensor_settings_1280 ; 
 int /*<<< orphan*/  tbl_sensor_settings_640 ; 
 int /*<<< orphan*/  tbl_sensor_settings_800 ; 
 int /*<<< orphan*/  tbl_sensor_settings_common ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	s32 reso = gspca_dev->cam.cam_mode[(s32) gspca_dev->curr_mode].priv;

	FUNC1(gspca_dev, 0x40, 5, 0x0001, 0x0000, 0, NULL);

	FUNC2(gspca_dev, tbl_sensor_settings_common,
				FUNC0(tbl_sensor_settings_common));

	switch (reso) {
	case IMAGE_1280:
		FUNC2(gspca_dev, tbl_sensor_settings_1280,
					FUNC0(tbl_sensor_settings_1280));
		FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 64, tbl_1280[0]);
		FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 40, tbl_1280[1]);
		FUNC1(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, tbl_1280[2]);
		break;

	case IMAGE_800:
		FUNC2(gspca_dev, tbl_sensor_settings_800,
					FUNC0(tbl_sensor_settings_800));
		FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 64, tbl_800[0]);
		FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 40, tbl_800[1]);
		FUNC1(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, tbl_800[2]);
		break;

	default:
		FUNC2(gspca_dev, tbl_sensor_settings_640,
					FUNC0(tbl_sensor_settings_640));
		FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 60, tbl_640[0]);
		FUNC1(gspca_dev, 0x40, 3, 0xba00, 0x0200, 40, tbl_640[1]);
		FUNC1(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, tbl_640[2]);
		break;
	}
	return 0;
}