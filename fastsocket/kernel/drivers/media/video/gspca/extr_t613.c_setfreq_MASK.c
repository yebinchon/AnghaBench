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
struct sd {int sensor; int freq; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
#define  SENSOR_LT168G 129 
#define  SENSOR_OM6802 128 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int*,int) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u8 reg66;
	u8 freq[4] = { 0x66, 0x00, 0xa8, 0xe8 };

	switch (sd->sensor) {
	case SENSOR_LT168G:
		if (sd->freq != 0)
			freq[3] = 0xa8;
		reg66 = 0x41;
		break;
	case SENSOR_OM6802:
		reg66 = 0xca;
		break;
	default:
		reg66 = 0x40;
		break;
	}
	switch (sd->freq) {
	case 0:				/* no flicker */
		freq[3] = 0xf0;
		break;
	case 2:				/* 60Hz */
		reg66 &= ~0x40;
		break;
	}
	freq[1] = reg66;

	FUNC0(gspca_dev, freq, sizeof freq);
}