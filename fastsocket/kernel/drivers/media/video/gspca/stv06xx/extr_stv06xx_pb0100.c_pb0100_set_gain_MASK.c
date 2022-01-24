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
struct sd {scalar_t__* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  scalar_t__ __s32 ;

/* Variables and functions */
 size_t AUTOGAIN_IDX ; 
 size_t BLUE_BALANCE_IDX ; 
 int /*<<< orphan*/  D_V4L2 ; 
 int EBUSY ; 
 size_t GAIN_IDX ; 
 int /*<<< orphan*/  PB_G1GAIN ; 
 int /*<<< orphan*/  PB_G2GAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 size_t RED_BALANCE_IDX ; 
 int FUNC1 (struct gspca_dev*,scalar_t__) ; 
 int FUNC2 (struct gspca_dev*,scalar_t__) ; 
 int FUNC3 (struct sd*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev, __s32 val)
{
	int err;
	struct sd *sd = (struct sd *) gspca_dev;
	s32 *sensor_settings = sd->sensor_priv;

	if (sensor_settings[AUTOGAIN_IDX])
		return -EBUSY;

	sensor_settings[GAIN_IDX] = val;
	err = FUNC3(sd, PB_G1GAIN, val);
	if (!err)
		err = FUNC3(sd, PB_G2GAIN, val);
	FUNC0(D_V4L2, "Set green gain to %d, status: %d", val, err);

	if (!err)
		err = FUNC2(gspca_dev,
					     sensor_settings[RED_BALANCE_IDX]);
	if (!err)
		err = FUNC1(gspca_dev,
					    sensor_settings[BLUE_BALANCE_IDX]);

	return err;
}