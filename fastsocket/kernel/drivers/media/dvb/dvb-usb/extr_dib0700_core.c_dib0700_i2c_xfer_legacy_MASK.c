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
struct i2c_msg {int addr; int len; int flags; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int I2C_M_RD ; 
 int REQUEST_I2C_READ ; 
 int REQUEST_I2C_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct dvb_usb_device*,int*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct dvb_usb_device*,int*,int) ; 
 struct dvb_usb_device* FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap,
				   struct i2c_msg *msg, int num)
{
	struct dvb_usb_device *d = FUNC3(adap);
	int i,len;
	u8 buf[255];

	if (FUNC5(&d->i2c_mutex) < 0)
		return -EAGAIN;

	for (i = 0; i < num; i++) {
		/* fill in the address */
		buf[1] = msg[i].addr << 1;
		/* fill the buffer */
		FUNC4(&buf[2], msg[i].buf, msg[i].len);

		/* write/read request */
		if (i+1 < num && (msg[i+1].flags & I2C_M_RD)) {
			buf[0] = REQUEST_I2C_READ;
			buf[1] |= 1;

			/* special thing in the current firmware: when length is zero the read-failed */
			if ((len = FUNC1(d, buf, msg[i].len + 2, msg[i+1].buf, msg[i+1].len)) <= 0) {
				FUNC0("I2C read failed on address 0x%02x\n",
					 msg[i].addr);
				break;
			}

			msg[i+1].len = len;

			i++;
		} else {
			buf[0] = REQUEST_I2C_WRITE;
			if (FUNC2(d, buf, msg[i].len + 2) < 0)
				break;
		}
	}

	FUNC6(&d->i2c_mutex);
	return i;
}