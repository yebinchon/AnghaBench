#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sd {TYPE_1__* sensor; } ;
struct TYPE_2__ {int const i2c_regW; int i2c_slave_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONF ; 
 int EINVAL ; 
 int /*<<< orphan*/  M5602_XB_I2C_CTRL ; 
 int /*<<< orphan*/  M5602_XB_I2C_DATA ; 
 int /*<<< orphan*/  M5602_XB_I2C_DEV_ADDR ; 
 int /*<<< orphan*/  M5602_XB_I2C_REG_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int const,int) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct sd*) ; 
 int FUNC3 (struct sd*,int /*<<< orphan*/ ,int const) ; 

int FUNC4(struct sd *sd, const u8 address,
		       u8 *i2c_data, const u8 len)
{
	int err, i;

	if (!len || len > sd->sensor->i2c_regW)
		return -EINVAL;

	err = FUNC2(sd);
	if (err < 0)
		return err;

	err = FUNC3(sd, M5602_XB_I2C_DEV_ADDR,
				 sd->sensor->i2c_slave_id);
	if (err < 0)
		return err;

	err = FUNC3(sd, M5602_XB_I2C_REG_ADDR, address);
	if (err < 0)
		return err;

	/* Sensors with registers that are of only
	   one byte width are differently read */

	/* FIXME: This works with the ov9650, but has issues with the po1030 */
	if (sd->sensor->i2c_regW == 1) {
		err = FUNC3(sd, M5602_XB_I2C_CTRL, 1);
		if (err < 0)
			return err;

		err = FUNC3(sd, M5602_XB_I2C_CTRL, 0x08);
	} else {
		err = FUNC3(sd, M5602_XB_I2C_CTRL, 0x18 + len);
	}

	for (i = 0; (i < len) && !err; i++) {
		err = FUNC2(sd);
		if (err < 0)
			return err;

		err = FUNC1(sd, M5602_XB_I2C_DATA, &(i2c_data[i]));

		FUNC0(D_CONF, "Reading sensor register "
			       "0x%x containing 0x%x ", address, *i2c_data);
	}
	return err;
}