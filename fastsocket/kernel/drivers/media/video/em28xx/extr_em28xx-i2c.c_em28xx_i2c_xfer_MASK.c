#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_msg {int addr; int flags; int len; int /*<<< orphan*/ * buf; } ;
struct i2c_adapter {struct em28xx* algo_data; } ;
struct TYPE_2__ {scalar_t__ is_em2800; } ;
struct em28xx {TYPE_1__ board; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (struct em28xx*,int) ; 
 int FUNC2 (struct em28xx*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct em28xx*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct em28xx*,int) ; 
 int FUNC5 (struct em28xx*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct em28xx*,int,int /*<<< orphan*/ *,int,int) ; 
 int i2c_debug ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *i2c_adap,
			   struct i2c_msg msgs[], int num)
{
	struct em28xx *dev = i2c_adap->algo_data;
	int addr, rc, i, byte;

	if (num <= 0)
		return 0;
	for (i = 0; i < num; i++) {
		addr = msgs[i].addr << 1;
		FUNC0(2, "%s %s addr=%x len=%d:",
			 (msgs[i].flags & I2C_M_RD) ? "read" : "write",
			 i == num - 1 ? "stop" : "nonstop", addr, msgs[i].len);
		if (!msgs[i].len) { /* no len: check only for device presence */
			if (dev->board.is_em2800)
				rc = FUNC1(dev, addr);
			else
				rc = FUNC4(dev, addr);
			if (rc < 0) {
				FUNC0(2, " no device\n");
				return rc;
			}

		} else if (msgs[i].flags & I2C_M_RD) {
			/* read bytes */
			if (dev->board.is_em2800)
				rc = FUNC2(dev, addr,
							   msgs[i].buf,
							   msgs[i].len);
			else
				rc = FUNC5(dev, addr,
							   msgs[i].buf,
							   msgs[i].len);
			if (i2c_debug >= 2) {
				for (byte = 0; byte < msgs[i].len; byte++)
					FUNC7(" %02x", msgs[i].buf[byte]);
			}
		} else {
			/* write bytes */
			if (i2c_debug >= 2) {
				for (byte = 0; byte < msgs[i].len; byte++)
					FUNC7(" %02x", msgs[i].buf[byte]);
			}
			if (dev->board.is_em2800)
				rc = FUNC3(dev, addr,
							   msgs[i].buf,
							   msgs[i].len);
			else
				rc = FUNC6(dev, addr,
							   msgs[i].buf,
							   msgs[i].len,
							   i == num - 1);
		}
		if (rc < 0)
			goto err;
		if (i2c_debug >= 2)
			FUNC7("\n");
	}

	return num;
err:
	FUNC0(2, " ERROR: %i\n", rc);
	return rc;
}