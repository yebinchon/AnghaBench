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
struct sd {int hflip; int flags; int vflip; int sensor; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int FL_HFLIP ; 
 int FL_VFLIP ; 
 int OV7660_MVFP_MIRROR ; 
 int OV7660_MVFP_VFLIP ; 
 int OV7660_REG_MVFP ; 
#define  SENSOR_MI1310_SOC 133 
#define  SENSOR_MI1320 132 
#define  SENSOR_MI1320_SOC 131 
#define  SENSOR_OV7660 130 
#define  SENSOR_OV7670 129 
#define  SENSOR_PO1200 128 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int*,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u8 data[2], hflip, vflip;

	hflip = sd->hflip;
	if (sd->flags & FL_HFLIP)
		hflip = !hflip;
	vflip = sd->vflip;
	if (sd->flags & FL_VFLIP)
		vflip = !vflip;
	switch (sd->sensor) {
	case SENSOR_MI1310_SOC:
	case SENSOR_MI1320:
	case SENSOR_MI1320_SOC:
		data[0] = data[1] = 0;		/* select page 0 */
		FUNC0(gspca_dev, 0xf0, data, 2);
		data[0] = sd->sensor == SENSOR_MI1310_SOC ? 0x03 : 0x01;
		data[1] = 0x02 * hflip
			| 0x01 * vflip;
		FUNC0(gspca_dev, 0x20, data, 2);
		break;
	case SENSOR_OV7660:
	case SENSOR_OV7670:
		data[0] = sd->sensor == SENSOR_OV7660 ? 0x01 : 0x07;
		data[0] |= OV7660_MVFP_MIRROR * hflip
			| OV7660_MVFP_VFLIP * vflip;
		FUNC0(gspca_dev, OV7660_REG_MVFP, data, 1);
		break;
	case SENSOR_PO1200:
		data[0] = 0;
		FUNC0(gspca_dev, 0x03, data, 1);
		data[0] = 0x80 * hflip
			| 0x40 * vflip
			| 0x06;
		FUNC0(gspca_dev, 0x1e, data, 1);
		break;
	}
}