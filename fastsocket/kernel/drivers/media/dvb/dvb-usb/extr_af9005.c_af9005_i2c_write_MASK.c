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
typedef  scalar_t__ u8 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APO_REG_I2C_RW_SILICON_TUNER ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int,int /*<<< orphan*/  (*) (char*)) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_device *d, u8 i2caddr, u8 reg,
			    u8 * data, int len)
{
	int ret, i;
	u8 buf[3];
	FUNC1("i2c_write i2caddr %x, reg %x, len %d data ", i2caddr,
		reg, len);
	FUNC2(data, len, deb_i2c);

	for (i = 0; i < len; i++) {
		buf[0] = i2caddr;
		buf[1] = reg + (u8) i;
		buf[2] = data[i];
		ret =
		    FUNC0(d,
						 APO_REG_I2C_RW_SILICON_TUNER,
						 buf, 3);
		if (ret) {
			FUNC1("i2c_write failed\n");
			return ret;
		}
	}
	FUNC1("i2c_write ok\n");
	return 0;
}