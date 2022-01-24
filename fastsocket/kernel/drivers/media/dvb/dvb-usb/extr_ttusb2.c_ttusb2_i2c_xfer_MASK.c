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
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_I2C_XFER ; 
 int EAGAIN ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct dvb_usb_device* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap,struct i2c_msg msg[],int num)
{
	struct dvb_usb_device *d = FUNC1(adap);
	static u8 obuf[60], ibuf[60];
	int i,read;

	if (FUNC3(&d->i2c_mutex) < 0)
		return -EAGAIN;

	if (num > 2)
		FUNC6("more than 2 i2c messages at a time is not handled yet. TODO.");

	for (i = 0; i < num; i++) {
		read = i+1 < num && (msg[i+1].flags & I2C_M_RD);

		obuf[0] = (msg[i].addr << 1) | read;
		obuf[1] = msg[i].len;

		/* read request */
		if (read)
			obuf[2] = msg[i+1].len;
		else
			obuf[2] = 0;

		FUNC2(&obuf[3],msg[i].buf,msg[i].len);

		if (FUNC5(d, CMD_I2C_XFER, obuf, msg[i].len+3, ibuf, obuf[2] + 3) < 0) {
			FUNC0("i2c transfer failed.");
			break;
		}

		if (read) {
			FUNC2(msg[i+1].buf,&ibuf[3],msg[i+1].len);
			i++;
		}
	}

	FUNC4(&d->i2c_mutex);
	return i;
}