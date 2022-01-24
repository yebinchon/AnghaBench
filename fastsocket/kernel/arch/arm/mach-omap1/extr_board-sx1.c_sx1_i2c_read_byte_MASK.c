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
typedef  unsigned char u8 ;
struct i2c_msg {unsigned char addr; int len; unsigned char* buf; scalar_t__ flags; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ I2C_M_RD ; 
 struct i2c_adapter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*) ; 
 int FUNC2 (struct i2c_adapter*,struct i2c_msg*,int) ; 

int FUNC3(u8 devaddr, u8 regoffset, u8 *value)
{
	struct i2c_adapter *adap;
	int err;
	struct i2c_msg msg[1];
	unsigned char data[2];

	adap = FUNC0(0);
	if (!adap)
		return -ENODEV;

	msg->addr = devaddr;	/* I2C address of chip */
	msg->flags = 0;
	msg->len = 1;
	msg->buf = data;
	data[0] = regoffset;	/* register num */
	err = FUNC2(adap, msg, 1);

	msg->addr = devaddr;	/* I2C address */
	msg->flags = I2C_M_RD;
	msg->len = 1;
	msg->buf = data;
	err = FUNC2(adap, msg, 1);
	*value = data[0];
	FUNC1(adap);

	if (err >= 0)
		return 0;
	return err;
}