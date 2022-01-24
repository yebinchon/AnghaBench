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
struct i2c_algo_pcf_data {int dummy; } ;

/* Variables and functions */
 unsigned short I2C_M_RD ; 
 unsigned short I2C_M_REV_DIR_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_algo_pcf_data*,unsigned char) ; 

__attribute__((used)) static int FUNC1(struct i2c_algo_pcf_data *adap,
			 struct i2c_msg *msg)
{
	unsigned short flags = msg->flags;
	unsigned char addr;

	addr = msg->addr << 1;
	if (flags & I2C_M_RD)
		addr |= 1;
	if (flags & I2C_M_REV_DIR_ADDR)
		addr ^= 1;
	FUNC0(adap, addr);

	return 0;
}