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
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 unsigned short I2C_M_RD ; 
 unsigned short I2C_M_TEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_adapter*,unsigned char,int) ; 
 int FUNC2 (struct i2c_adapter*,unsigned char,int) ; 

__attribute__((used)) static inline int FUNC3(struct i2c_adapter *i2c_adap,
				   struct i2c_msg *msg, int retries,
				   unsigned char *add)
{
	unsigned short flags = msg->flags;

	unsigned char addr;
	int ret;
	if ((flags & I2C_M_TEN)) {
		/* a ten bit address */
		addr = 0xf0 | ((msg->addr >> 7) & 0x03);
		/* try extended address code... */
		ret = FUNC2(i2c_adap, addr, retries);
		if (ret != 1) {
			FUNC0(&i2c_adap->dev,
				"died at extended address code,	while writing\n");
			return -EREMOTEIO;
		}
		add[0] = addr;
		if (flags & I2C_M_RD) {
			/* okay, now switch into reading mode */
			addr |= 0x01;
			ret = FUNC1(i2c_adap, addr, retries);
			if (ret != 1) {
				FUNC0(&i2c_adap->dev,
					"died at extended address code, while reading\n");
				return -EREMOTEIO;
			}
		}

	} else {		/* normal 7bit address  */
		addr = (msg->addr << 1);
		if (flags & I2C_M_RD)
			addr |= 1;

		add[0] = addr;
		if (flags & I2C_M_RD)
			ret = FUNC1(i2c_adap, addr, retries);
		else
			ret = FUNC2(i2c_adap, addr, retries);

		if (ret != 1)
			return -EREMOTEIO;
	}
	return 0;
}