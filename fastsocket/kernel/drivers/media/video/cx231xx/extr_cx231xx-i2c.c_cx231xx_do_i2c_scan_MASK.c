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
struct i2c_client {int addr; } ;
struct cx231xx {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char** i2c_devs ; 
 int FUNC1 (struct i2c_client*,unsigned char*,int /*<<< orphan*/ ) ; 

void FUNC2(struct cx231xx *dev, struct i2c_client *c)
{
	unsigned char buf;
	int i, rc;

	FUNC0(": Checking for I2C devices ..\n");
	for (i = 0; i < 128; i++) {
		c->addr = i;
		rc = FUNC1(c, &buf, 0);
		if (rc < 0)
			continue;
		FUNC0("%s: i2c scan: found device @ 0x%x  [%s]\n",
			     dev->name, i << 1,
			     i2c_devs[i] ? i2c_devs[i] : "???");
	}
	FUNC0(": Completed Checking for I2C devices.\n");
}