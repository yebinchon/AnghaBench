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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  PO1030_RED_GAIN ; 
 size_t RED_BALANCE_IDX ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev, __s32 val)
{
	struct sd *sd = (struct sd *) gspca_dev;
	s32 *sensor_settings = sd->sensor_priv;
	u8 i2c_data;
	int err;

	sensor_settings[RED_BALANCE_IDX] = val;

	i2c_data = val & 0xff;
	FUNC0(D_V4L2, "Set red gain to %d", i2c_data);
	err = FUNC1(sd, PO1030_RED_GAIN,
				  &i2c_data, 1);
	return err;
}