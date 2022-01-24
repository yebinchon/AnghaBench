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
typedef  int /*<<< orphan*/  u8 ;
struct ab3100 {int /*<<< orphan*/  access_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c_client; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ab3100 *ab3100, u8 reg, u8 *regval)
{
	int err;

	err = FUNC3(&ab3100->access_mutex);
	if (err)
		return err;

	/*
	 * AB3100 require an I2C "stop" command between each message, else
	 * it will not work. The only way of achieveing this with the
	 * message transport layer is to send the read and write messages
	 * separately.
	 */
	err = FUNC2(ab3100->i2c_client, &reg, 1);
	if (err < 0) {
		FUNC0(ab3100->dev,
			"write error (send register address): %d\n",
			err);
		goto get_reg_out_unlock;
	} else if (err != 1) {
		FUNC0(ab3100->dev,
			"write error (send register address) "
			"%d bytes transferred (expected 1)\n",
			err);
		err = -EIO;
		goto get_reg_out_unlock;
	} else {
		/* All is well */
		err = 0;
	}

	err = FUNC1(ab3100->i2c_client, regval, 1);
	if (err < 0) {
		FUNC0(ab3100->dev,
			"write error (read register): %d\n",
			err);
		goto get_reg_out_unlock;
	} else if (err != 1) {
		FUNC0(ab3100->dev,
			"write error (read register) "
			"%d bytes transferred (expected 1)\n",
			err);
		err = -EIO;
		goto get_reg_out_unlock;
	} else {
		/* All is well */
		err = 0;
	}

 get_reg_out_unlock:
	FUNC4(&ab3100->access_mutex);
	return err;
}