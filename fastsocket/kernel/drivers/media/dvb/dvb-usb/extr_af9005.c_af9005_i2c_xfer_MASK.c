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
struct i2c_msg {scalar_t__ len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct dvb_usb_device* FUNC2 (struct i2c_adapter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap, struct i2c_msg msg[],
			   int num)
{
	/* only implements what the mt2060 module does, don't know how
	   to make it really generic */
	struct dvb_usb_device *d = FUNC2(adap);
	int ret;
	u8 reg, addr;
	u8 *value;

	if (FUNC3(&d->i2c_mutex) < 0)
		return -EAGAIN;

	if (num > 2)
		FUNC5("more than 2 i2c messages at a time is not handled yet. TODO.");

	if (num == 2) {
		/* reads a single register */
		reg = *msg[0].buf;
		addr = msg[0].addr;
		value = msg[1].buf;
		ret = FUNC0(d, addr, reg, value, 1);
		if (ret == 0)
			ret = 2;
	} else {
		/* write one or more registers */
		reg = msg[0].buf[0];
		addr = msg[0].addr;
		value = &msg[0].buf[1];
		ret = FUNC1(d, addr, reg, value, msg[0].len - 1);
		if (ret == 0)
			ret = 1;
	}

	FUNC4(&d->i2c_mutex);
	return ret;
}