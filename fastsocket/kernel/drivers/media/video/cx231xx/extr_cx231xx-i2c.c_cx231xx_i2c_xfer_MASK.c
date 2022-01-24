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
struct i2c_msg {int addr; int flags; int len; int /*<<< orphan*/ * buf; } ;
struct i2c_adapter {struct cx231xx_i2c* algo_data; } ;
struct cx231xx_i2c {int nr; struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  i2c_lock; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int FUNC0 (struct i2c_adapter*,struct i2c_msg*) ; 
 int FUNC1 (struct i2c_adapter*,struct i2c_msg*) ; 
 int FUNC2 (struct i2c_adapter*,struct i2c_msg*,struct i2c_msg*) ; 
 int FUNC3 (struct i2c_adapter*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int i2c_debug ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *i2c_adap,
			    struct i2c_msg msgs[], int num)
{
	struct cx231xx_i2c *bus = i2c_adap->algo_data;
	struct cx231xx *dev = bus->dev;
	int addr, rc, i, byte;

	if (num <= 0)
		return 0;
	FUNC5(&dev->i2c_lock);
	for (i = 0; i < num; i++) {

		addr = msgs[i].addr >> 1;

		FUNC4(2, "%s %s addr=%x len=%d:",
			 (msgs[i].flags & I2C_M_RD) ? "read" : "write",
			 i == num - 1 ? "stop" : "nonstop", addr, msgs[i].len);
		if (!msgs[i].len) {
			/* no len: check only for device presence */
			rc = FUNC0(i2c_adap, &msgs[i]);
			if (rc < 0) {
				FUNC4(2, " no device\n");
				FUNC6(&dev->i2c_lock);
				return rc;
			}

		} else if (msgs[i].flags & I2C_M_RD) {
			/* read bytes */
			rc = FUNC1(i2c_adap, &msgs[i]);
			if (i2c_debug >= 2) {
				for (byte = 0; byte < msgs[i].len; byte++)
					FUNC7(" %02x", msgs[i].buf[byte]);
			}
		} else if (i + 1 < num && (msgs[i + 1].flags & I2C_M_RD) &&
			   msgs[i].addr == msgs[i + 1].addr
			   && (msgs[i].len <= 2) && (bus->nr < 3)) {
			/* read bytes */
			rc = FUNC2(i2c_adap,
							       &msgs[i],
							       &msgs[i + 1]);
			if (i2c_debug >= 2) {
				for (byte = 0; byte < msgs[i].len; byte++)
					FUNC7(" %02x", msgs[i].buf[byte]);
			}
			i++;
		} else {
			/* write bytes */
			if (i2c_debug >= 2) {
				for (byte = 0; byte < msgs[i].len; byte++)
					FUNC7(" %02x", msgs[i].buf[byte]);
			}
			rc = FUNC3(i2c_adap, &msgs[i]);
		}
		if (rc < 0)
			goto err;
		if (i2c_debug >= 2)
			FUNC7("\n");
	}
	FUNC6(&dev->i2c_lock);
	return num;
err:
	FUNC4(2, " ERROR: %i\n", rc);
	FUNC6(&dev->i2c_lock);
	return rc;
}