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
struct rs5c372 {int /*<<< orphan*/ * regs; scalar_t__ buf; scalar_t__ smbus; struct i2c_client* client; } ;
struct i2c_msg {int member_2; scalar_t__ member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  RS5C372_REG_SECS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct i2c_client*,int,int,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC5(struct rs5c372 *rs5c)
{
	struct i2c_client	*client = rs5c->client;
	struct i2c_msg		msgs[] = {
		{ client->addr, I2C_M_RD, sizeof rs5c->buf, rs5c->buf },
	};

	/* This implements the third reading method from the datasheet, using
	 * an internal address that's reset after each transaction (by STOP)
	 * to 0x0f ... so we read extra registers, and skip the first one.
	 *
	 * The first method doesn't work with the iop3xx adapter driver, on at
	 * least 80219 chips; this works around that bug.
	 *
	 * The third method on the other hand doesn't work for the SMBus-only
	 * configurations, so we use the the first method there, stripping off
	 * the extra register in the process.
	 */
	if (rs5c->smbus) {
		int addr = FUNC0(RS5C372_REG_SECS);
		int size = sizeof(rs5c->buf) - 1;

		if (FUNC3(client, addr, size,
						  rs5c->buf + 1) != size) {
			FUNC2(&client->dev, "can't read registers\n");
			return -EIO;
		}
	} else {
		if ((FUNC4(client->adapter, msgs, 1)) != 1) {
			FUNC2(&client->dev, "can't read registers\n");
			return -EIO;
		}
	}

	FUNC1(&client->dev,
		"%02x %02x %02x (%02x) %02x %02x %02x (%02x), "
		"%02x %02x %02x, %02x %02x %02x; %02x %02x\n",
		rs5c->regs[0],  rs5c->regs[1],  rs5c->regs[2],  rs5c->regs[3],
		rs5c->regs[4],  rs5c->regs[5],  rs5c->regs[6],  rs5c->regs[7],
		rs5c->regs[8],  rs5c->regs[9],  rs5c->regs[10], rs5c->regs[11],
		rs5c->regs[12], rs5c->regs[13], rs5c->regs[14], rs5c->regs[15]);

	return 0;
}