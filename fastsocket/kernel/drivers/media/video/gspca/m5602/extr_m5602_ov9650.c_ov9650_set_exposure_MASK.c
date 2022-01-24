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
struct sd {int* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef  int s32 ;
typedef  int __s32 ;

/* Variables and functions */
 int /*<<< orphan*/  D_V4L2 ; 
 size_t EXPOSURE_IDX ; 
 int /*<<< orphan*/  OV9650_AECH ; 
 int /*<<< orphan*/  OV9650_AECHM ; 
 int /*<<< orphan*/  OV9650_COM1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev, __s32 val)
{
	struct sd *sd = (struct sd *) gspca_dev;
	s32 *sensor_settings = sd->sensor_priv;
	u8 i2c_data;
	int err;

	FUNC0(D_V4L2, "Set exposure to %d", val);

	sensor_settings[EXPOSURE_IDX] = val;
	/* The 6 MSBs */
	i2c_data = (val >> 10) & 0x3f;
	err = FUNC1(sd, OV9650_AECHM,
				  &i2c_data, 1);
	if (err < 0)
		return err;

	/* The 8 middle bits */
	i2c_data = (val >> 2) & 0xff;
	err = FUNC1(sd, OV9650_AECH,
				  &i2c_data, 1);
	if (err < 0)
		return err;

	/* The 2 LSBs */
	i2c_data = val & 0x03;
	err = FUNC1(sd, OV9650_COM1, &i2c_data, 1);
	return err;
}