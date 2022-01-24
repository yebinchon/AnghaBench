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
typedef  int u16 ;
struct i2c_msg {int addr; int* buf; int len; int /*<<< orphan*/  flags; } ;
struct i2c_device {int addr; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static u16 FUNC2(struct i2c_device *i2c, u16 reg)
{
	u8 wb[2] = { reg >> 8, reg & 0xff };
	u8 rb[2];
	struct i2c_msg msg[2] = {
		{.addr = i2c->addr >> 1,.flags = 0,.buf = wb,.len = 2},
		{.addr = i2c->addr >> 1,.flags = I2C_M_RD,.buf = rb,.len = 2},
	};

	if (FUNC1(i2c->adap, msg, 2) != 2)
		FUNC0("i2c read error on %d", reg);

	return (rb[0] << 8) | rb[1];
}