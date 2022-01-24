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
struct s3c24xx_i2c {int msg_num; int msg_idx; int /*<<< orphan*/  dev; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; scalar_t__ msg_ptr; struct i2c_msg* msg; scalar_t__ suspended; } ;
struct i2c_msg {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  STATE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c24xx_i2c*,struct i2c_msg*) ; 
 int FUNC5 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct s3c24xx_i2c *i2c,
			      struct i2c_msg *msgs, int num)
{
	unsigned long timeout;
	int ret;

	if (i2c->suspended)
		return -EIO;

	ret = FUNC5(i2c);
	if (ret != 0) {
		FUNC1(i2c->dev, "cannot get bus (error %d)\n", ret);
		ret = -EAGAIN;
		goto out;
	}

	FUNC6(&i2c->lock);

	i2c->msg     = msgs;
	i2c->msg_num = num;
	i2c->msg_ptr = 0;
	i2c->msg_idx = 0;
	i2c->state   = STATE_START;

	FUNC3(i2c);
	FUNC4(i2c, msgs);
	FUNC7(&i2c->lock);

	timeout = FUNC8(i2c->wait, i2c->msg_num == 0, HZ * 5);

	ret = i2c->msg_idx;

	/* having these next two as dev_err() makes life very
	 * noisy when doing an i2cdetect */

	if (timeout == 0)
		FUNC0(i2c->dev, "timeout\n");
	else if (ret != num)
		FUNC0(i2c->dev, "incomplete xfer (%d)\n", ret);

	/* ensure the stop has been through the bus */

	FUNC2(1);

 out:
	return ret;
}