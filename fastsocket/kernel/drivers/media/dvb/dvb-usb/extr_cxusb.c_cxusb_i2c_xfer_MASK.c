#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_msg {int addr; int flags; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; TYPE_2__* udev; } ;
struct TYPE_3__ {scalar_t__ idVendor; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_I2C_READ ; 
 int /*<<< orphan*/  CMD_I2C_WRITE ; 
 int EAGAIN ; 
 int EREMOTEIO ; 
 int I2C_M_RD ; 
 scalar_t__ USB_VID_MEDION ; 
 scalar_t__ FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct dvb_usb_device* FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap, struct i2c_msg msg[],
			  int num)
{
	struct dvb_usb_device *d = FUNC3(adap);
	int i;

	if (FUNC5(&d->i2c_mutex) < 0)
		return -EAGAIN;

	for (i = 0; i < num; i++) {

		if (d->udev->descriptor.idVendor == USB_VID_MEDION)
			switch (msg[i].addr) {
			case 0x63:
				FUNC1(d, 0);
				break;
			default:
				FUNC1(d, 1);
				break;
			}

		if (msg[i].flags & I2C_M_RD) {
			/* read only */
			u8 obuf[3], ibuf[1+msg[i].len];
			obuf[0] = 0;
			obuf[1] = msg[i].len;
			obuf[2] = msg[i].addr;
			if (FUNC0(d, CMD_I2C_READ,
					   obuf, 3,
					   ibuf, 1+msg[i].len) < 0) {
				FUNC7("i2c read failed");
				break;
			}
			FUNC4(msg[i].buf, &ibuf[1], msg[i].len);
		} else if (i+1 < num && (msg[i+1].flags & I2C_M_RD) &&
			   msg[i].addr == msg[i+1].addr) {
			/* write to then read from same address */
			u8 obuf[3+msg[i].len], ibuf[1+msg[i+1].len];
			obuf[0] = msg[i].len;
			obuf[1] = msg[i+1].len;
			obuf[2] = msg[i].addr;
			FUNC4(&obuf[3], msg[i].buf, msg[i].len);

			if (FUNC0(d, CMD_I2C_READ,
					   obuf, 3+msg[i].len,
					   ibuf, 1+msg[i+1].len) < 0)
				break;

			if (ibuf[0] != 0x08)
				FUNC2("i2c read may have failed\n");

			FUNC4(msg[i+1].buf, &ibuf[1], msg[i+1].len);

			i++;
		} else {
			/* write only */
			u8 obuf[2+msg[i].len], ibuf;
			obuf[0] = msg[i].addr;
			obuf[1] = msg[i].len;
			FUNC4(&obuf[2], msg[i].buf, msg[i].len);

			if (FUNC0(d, CMD_I2C_WRITE, obuf,
					   2+msg[i].len, &ibuf,1) < 0)
				break;
			if (ibuf != 0x08)
				FUNC2("i2c write may have failed\n");
		}
	}

	FUNC6(&d->i2c_mutex);
	return i == num ? num : -EREMOTEIO;
}