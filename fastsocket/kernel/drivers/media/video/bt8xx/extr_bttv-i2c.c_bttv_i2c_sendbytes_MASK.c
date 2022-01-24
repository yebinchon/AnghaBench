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
typedef  int u32 ;
struct i2c_msg {int len; int addr; int* buf; } ;
struct bttv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_I2C ; 
 int BT878_I2C_NOSTART ; 
 int BT878_I2C_NOSTOP ; 
 int EINVAL ; 
 int EIO ; 
 int I2C_HW ; 
 int FUNC0 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ i2c_debug ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(struct bttv *btv, const struct i2c_msg *msg, int last)
{
	u32 xmit;
	int retval,cnt;

	/* sanity checks */
	if (0 == msg->len)
		return -EINVAL;

	/* start, address + first byte */
	xmit = (msg->addr << 25) | (msg->buf[0] << 16) | I2C_HW;
	if (msg->len > 1 || !last)
		xmit |= BT878_I2C_NOSTOP;
	FUNC1(xmit, BT848_I2C);
	retval = FUNC0(btv);
	if (retval < 0)
		goto err;
	if (retval == 0)
		goto eio;
	if (i2c_debug) {
		FUNC2(" <W %02x %02x", msg->addr << 1, msg->buf[0]);
		if (!(xmit & BT878_I2C_NOSTOP))
			FUNC2(" >\n");
	}

	for (cnt = 1; cnt < msg->len; cnt++ ) {
		/* following bytes */
		xmit = (msg->buf[cnt] << 24) | I2C_HW | BT878_I2C_NOSTART;
		if (cnt < msg->len-1 || !last)
			xmit |= BT878_I2C_NOSTOP;
		FUNC1(xmit, BT848_I2C);
		retval = FUNC0(btv);
		if (retval < 0)
			goto err;
		if (retval == 0)
			goto eio;
		if (i2c_debug) {
			FUNC2(" %02x", msg->buf[cnt]);
			if (!(xmit & BT878_I2C_NOSTOP))
				FUNC2(" >\n");
		}
	}
	return msg->len;

 eio:
	retval = -EIO;
 err:
	if (i2c_debug)
		FUNC2(" ERR: %d\n",retval);
	return retval;
}