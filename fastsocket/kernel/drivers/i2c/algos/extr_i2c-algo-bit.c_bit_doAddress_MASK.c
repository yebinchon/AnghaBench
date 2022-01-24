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
struct i2c_msg {unsigned short flags; int addr; } ;
struct i2c_algo_bit_data {int dummy; } ;
struct i2c_adapter {int retries; int /*<<< orphan*/  dev; struct i2c_algo_bit_data* algo_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int EREMOTEIO ; 
 unsigned short I2C_M_IGNORE_NAK ; 
 unsigned short I2C_M_RD ; 
 unsigned short I2C_M_REV_DIR_ADDR ; 
 unsigned short I2C_M_TEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_bit_data*) ; 
 int FUNC4 (struct i2c_adapter*,unsigned char,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *i2c_adap, struct i2c_msg *msg)
{
	unsigned short flags = msg->flags;
	unsigned short nak_ok = msg->flags & I2C_M_IGNORE_NAK;
	struct i2c_algo_bit_data *adap = i2c_adap->algo_data;

	unsigned char addr;
	int ret, retries;

	retries = nak_ok ? 0 : i2c_adap->retries;

	if (flags & I2C_M_TEN) {
		/* a ten bit address */
		addr = 0xf0 | ((msg->addr >> 7) & 0x03);
		FUNC0(2, &i2c_adap->dev, "addr0: %d\n", addr);
		/* try extended address code...*/
		ret = FUNC4(i2c_adap, addr, retries);
		if ((ret != 1) && !nak_ok)  {
			FUNC1(&i2c_adap->dev,
				"died at extended address code\n");
			return -EREMOTEIO;
		}
		/* the remaining 8 bit address */
		ret = FUNC2(i2c_adap, msg->addr & 0x7f);
		if ((ret != 1) && !nak_ok) {
			/* the chip did not ack / xmission error occurred */
			FUNC1(&i2c_adap->dev, "died at 2nd address code\n");
			return -EREMOTEIO;
		}
		if (flags & I2C_M_RD) {
			FUNC0(3, &i2c_adap->dev, "emitting repeated "
				"start condition\n");
			FUNC3(adap);
			/* okay, now switch into reading mode */
			addr |= 0x01;
			ret = FUNC4(i2c_adap, addr, retries);
			if ((ret != 1) && !nak_ok) {
				FUNC1(&i2c_adap->dev,
					"died at repeated address code\n");
				return -EREMOTEIO;
			}
		}
	} else {		/* normal 7bit address	*/
		addr = msg->addr << 1;
		if (flags & I2C_M_RD)
			addr |= 1;
		if (flags & I2C_M_REV_DIR_ADDR)
			addr ^= 1;
		ret = FUNC4(i2c_adap, addr, retries);
		if ((ret != 1) && !nak_ok)
			return -ENXIO;
	}

	return 0;
}