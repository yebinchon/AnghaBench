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
struct mv64xxx_i2c_data {int block; int rc; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  action; int /*<<< orphan*/  bytes_left; TYPE_1__* msg; } ;
struct i2c_msg {int flags; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int I2C_M_NOSTART ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  MV64XXX_I2C_ACTION_CONTINUE ; 
 int /*<<< orphan*/  MV64XXX_I2C_ACTION_SEND_DATA ; 
 int /*<<< orphan*/  MV64XXX_I2C_ACTION_SEND_START ; 
 int /*<<< orphan*/  MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK ; 
 int /*<<< orphan*/  MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA ; 
 int /*<<< orphan*/  MV64XXX_I2C_STATE_WAITING_FOR_START_COND ; 
 int /*<<< orphan*/  FUNC0 (struct mv64xxx_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv64xxx_i2c_data*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv64xxx_i2c_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct mv64xxx_i2c_data *drv_data, struct i2c_msg *msg)
{
	unsigned long	flags;

	FUNC3(&drv_data->lock, flags);
	FUNC1(drv_data, msg);

	if (FUNC5(msg->flags & I2C_M_NOSTART)) { /* Skip start/addr phases */
		if (drv_data->msg->flags & I2C_M_RD) {
			/* No action to do, wait for slave to send a byte */
			drv_data->action = MV64XXX_I2C_ACTION_CONTINUE;
			drv_data->state =
				MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA;
		} else {
			drv_data->action = MV64XXX_I2C_ACTION_SEND_DATA;
			drv_data->state =
				MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK;
			drv_data->bytes_left--;
		}
	} else {
		drv_data->action = MV64XXX_I2C_ACTION_SEND_START;
		drv_data->state = MV64XXX_I2C_STATE_WAITING_FOR_START_COND;
	}

	drv_data->block = 1;
	FUNC0(drv_data);
	FUNC4(&drv_data->lock, flags);

	FUNC2(drv_data);
	return drv_data->rc;
}