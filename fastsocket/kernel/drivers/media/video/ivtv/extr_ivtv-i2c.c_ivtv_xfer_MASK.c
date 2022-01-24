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
struct v4l2_device {int dummy; } ;
struct ivtv {int /*<<< orphan*/  i2c_bus_lock; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 struct v4l2_device* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ivtv* FUNC5 (struct v4l2_device*) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *i2c_adap, struct i2c_msg *msgs, int num)
{
	struct v4l2_device *v4l2_dev = FUNC0(i2c_adap);
	struct ivtv *itv = FUNC5(v4l2_dev);
	int retval;
	int i;

	FUNC3(&itv->i2c_bus_lock);
	for (i = retval = 0; retval == 0 && i < num; i++) {
		if (msgs[i].flags & I2C_M_RD)
			retval = FUNC1(itv, msgs[i].addr, msgs[i].buf, msgs[i].len);
		else {
			/* if followed by a read, don't stop */
			int stop = !(i + 1 < num && msgs[i + 1].flags == I2C_M_RD);

			retval = FUNC2(itv, msgs[i].addr, msgs[i].buf, msgs[i].len, stop);
		}
	}
	FUNC4(&itv->i2c_bus_lock);
	return retval ? retval : num;
}