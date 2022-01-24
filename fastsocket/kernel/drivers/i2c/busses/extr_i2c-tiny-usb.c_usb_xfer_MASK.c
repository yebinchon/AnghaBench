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
struct i2c_msg {int flags; int len; unsigned char* buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CMD_GET_STATUS ; 
 int CMD_I2C_IO ; 
 int CMD_I2C_IO_BEGIN ; 
 int CMD_I2C_IO_END ; 
 int EREMOTEIO ; 
 int I2C_M_RD ; 
 unsigned char STATUS_ADDRESS_NAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_adapter*,int,int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC3 (struct i2c_adapter*,int,int,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
{
	unsigned char status;
	struct i2c_msg *pmsg;
	int i;

	FUNC0(&adapter->dev, "master xfer %d messages:\n", num);

	for (i = 0 ; i < num ; i++) {
		int cmd = CMD_I2C_IO;

		if (i == 0)
			cmd |= CMD_I2C_IO_BEGIN;

		if (i == num-1)
			cmd |= CMD_I2C_IO_END;

		pmsg = &msgs[i];

		FUNC0(&adapter->dev,
			"  %d: %s (flags %d) %d bytes to 0x%02x\n",
			i, pmsg->flags & I2C_M_RD ? "read" : "write",
			pmsg->flags, pmsg->len, pmsg->addr);

		/* and directly send the message */
		if (pmsg->flags & I2C_M_RD) {
			/* read data */
			if (FUNC2(adapter, cmd,
				     pmsg->flags, pmsg->addr,
				     pmsg->buf, pmsg->len) != pmsg->len) {
				FUNC1(&adapter->dev,
					"failure reading data\n");
				return -EREMOTEIO;
			}
		} else {
			/* write data */
			if (FUNC3(adapter, cmd,
				      pmsg->flags, pmsg->addr,
				      pmsg->buf, pmsg->len) != pmsg->len) {
				FUNC1(&adapter->dev,
					"failure writing data\n");
				return -EREMOTEIO;
			}
		}

		/* read status */
		if (FUNC2(adapter, CMD_GET_STATUS, 0, 0, &status, 1) != 1) {
			FUNC1(&adapter->dev, "failure reading status\n");
			return -EREMOTEIO;
		}

		FUNC0(&adapter->dev, "  status = %d\n", status);
		if (status == STATUS_ADDRESS_NAK)
			return -EREMOTEIO;
	}

	return i;
}