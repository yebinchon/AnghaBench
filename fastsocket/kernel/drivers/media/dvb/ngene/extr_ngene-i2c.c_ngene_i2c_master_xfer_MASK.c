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
struct ngene_channel {int /*<<< orphan*/  number; struct ngene* dev; } ;
struct ngene {int /*<<< orphan*/  i2c_switch_mutex; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ngene*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ngene*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ngene*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adapter,
				 struct i2c_msg msg[], int num)
{
	struct ngene_channel *chan =
		(struct ngene_channel *)FUNC1(adapter);
	struct ngene *dev = chan->dev;

	FUNC0(&dev->i2c_switch_mutex);
	FUNC4(dev, chan->number);

	if (num == 2 && msg[1].flags & I2C_M_RD && !(msg[0].flags & I2C_M_RD))
		if (!FUNC2(dev, msg[0].addr,
					    msg[0].buf, msg[0].len,
					    msg[1].buf, msg[1].len, 0))
			goto done;

	if (num == 1 && !(msg[0].flags & I2C_M_RD))
		if (!FUNC3(dev, msg[0].addr,
					     msg[0].buf, msg[0].len))
			goto done;
	if (num == 1 && (msg[0].flags & I2C_M_RD))
		if (!FUNC2(dev, msg[0].addr, NULL, 0,
					    msg[0].buf, msg[0].len, 0))
			goto done;

	FUNC5(&dev->i2c_switch_mutex);
	return -EIO;

done:
	FUNC5(&dev->i2c_switch_mutex);
	return num;
}