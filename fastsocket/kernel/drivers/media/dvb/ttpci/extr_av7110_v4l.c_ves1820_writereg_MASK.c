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
struct saa7146_dev {struct av7110* ext_priv; } ;
struct i2c_msg {int addr; int* buf; int len; int /*<<< orphan*/  flags; } ;
struct av7110 {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct saa7146_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct saa7146_dev *dev, u8 addr, u8 reg, u8 data)
{
	struct av7110 *av7110 = dev->ext_priv;
	u8 buf[] = { 0x00, reg, data };
	struct i2c_msg msg = { .addr = addr, .flags = 0, .buf = buf, .len = 3 };

	FUNC0(4, "dev: %p\n", dev);

	if (1 != FUNC1(&av7110->i2c_adap, &msg, 1))
		return -1;
	return 0;
}