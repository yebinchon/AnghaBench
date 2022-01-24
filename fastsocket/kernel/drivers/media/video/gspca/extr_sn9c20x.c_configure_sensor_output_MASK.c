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
typedef  int u8 ;
struct sd {int sensor; int hstart; int vstart; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int MODE_SXGA ; 
#define  SENSOR_MT9M111 131 
#define  SENSOR_MT9M112 130 
#define  SENSOR_OV9650 129 
#define  SENSOR_SOI968 128 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev, int mode)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u8 value;
	switch (sd->sensor) {
	case SENSOR_SOI968:
		if (mode & MODE_SXGA) {
			FUNC1(gspca_dev, 0x17, 0x1d);
			FUNC1(gspca_dev, 0x18, 0xbd);
			FUNC1(gspca_dev, 0x19, 0x01);
			FUNC1(gspca_dev, 0x1a, 0x81);
			FUNC1(gspca_dev, 0x12, 0x00);
			sd->hstart = 140;
			sd->vstart = 19;
		} else {
			FUNC1(gspca_dev, 0x17, 0x13);
			FUNC1(gspca_dev, 0x18, 0x63);
			FUNC1(gspca_dev, 0x19, 0x01);
			FUNC1(gspca_dev, 0x1a, 0x79);
			FUNC1(gspca_dev, 0x12, 0x40);
			sd->hstart = 60;
			sd->vstart = 11;
		}
		break;
	case SENSOR_OV9650:
		if (mode & MODE_SXGA) {
			FUNC1(gspca_dev, 0x17, 0x1b);
			FUNC1(gspca_dev, 0x18, 0xbc);
			FUNC1(gspca_dev, 0x19, 0x01);
			FUNC1(gspca_dev, 0x1a, 0x82);
			FUNC0(gspca_dev, 0x12, &value);
			FUNC1(gspca_dev, 0x12, value & 0x07);
		} else {
			FUNC1(gspca_dev, 0x17, 0x24);
			FUNC1(gspca_dev, 0x18, 0xc5);
			FUNC1(gspca_dev, 0x19, 0x00);
			FUNC1(gspca_dev, 0x1a, 0x3c);
			FUNC0(gspca_dev, 0x12, &value);
			FUNC1(gspca_dev, 0x12, (value & 0x7) | 0x40);
		}
		break;
	case SENSOR_MT9M112:
	case SENSOR_MT9M111:
		if (mode & MODE_SXGA) {
			FUNC2(gspca_dev, 0xf0, 0x0002);
			FUNC2(gspca_dev, 0xc8, 0x970b);
			FUNC2(gspca_dev, 0xf0, 0x0000);
		} else {
			FUNC2(gspca_dev, 0xf0, 0x0002);
			FUNC2(gspca_dev, 0xc8, 0x8000);
			FUNC2(gspca_dev, 0xf0, 0x0000);
		}
		break;
	}
}