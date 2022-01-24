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
struct i2c_msg {int addr; int flags; int len; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int I2C_M_RD ; 
 int dvb_usb_opera1_debug ; 
 struct dvb_usb_device* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dvb_usb_device*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap, struct i2c_msg msg[],
			   int num)
{
	struct dvb_usb_device *d = FUNC0(adap);
	int i = 0, tmp = 0;

	if (!d)
		return -ENODEV;
	if (FUNC2(&d->i2c_mutex) < 0)
		return -EAGAIN;

	for (i = 0; i < num; i++) {
		if ((tmp = FUNC4(d,
					(msg[i].addr<<1)|(msg[i].flags&I2C_M_RD?0x01:0),
					msg[i].buf,
					msg[i].len
					)) != msg[i].len) {
			break;
		}
		if (dvb_usb_opera1_debug & 0x10)
			FUNC1("sending i2c mesage %d %d", tmp, msg[i].len);
	}
	FUNC3(&d->i2c_mutex);
	return num;
}