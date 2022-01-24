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
typedef  unsigned int u8 ;
struct i2c_msg {unsigned int* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int flags; } ;
struct at24_data {scalar_t__ use_smbus; TYPE_1__ chip; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int AT24_FLAG_ADDR16 ; 
 size_t ETIMEDOUT ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 size_t I2C_SMBUS_BLOCK_MAX ; 
 struct i2c_client* FUNC0 (struct at24_data*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,unsigned int,int,unsigned long) ; 
 int FUNC2 (struct i2c_client*,unsigned int,size_t,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 size_t io_limit ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_msg*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  write_timeout ; 

__attribute__((used)) static ssize_t FUNC8(struct at24_data *at24, char *buf,
		unsigned offset, size_t count)
{
	struct i2c_msg msg[2];
	u8 msgbuf[2];
	struct i2c_client *client;
	unsigned long timeout, read_time;
	int status, i;

	FUNC4(msg, 0, sizeof(msg));

	/*
	 * REVISIT some multi-address chips don't rollover page reads to
	 * the next slave address, so we may need to truncate the count.
	 * Those chips might need another quirk flag.
	 *
	 * If the real hardware used four adjacent 24c02 chips and that
	 * were misconfigured as one 24c08, that would be a similar effect:
	 * one "eeprom" file not four, but larger reads would fail when
	 * they crossed certain pages.
	 */

	/*
	 * Slave address and byte offset derive from the offset. Always
	 * set the byte address; on a multi-master board, another master
	 * may have changed the chip's "current" address pointer.
	 */
	client = FUNC0(at24, &offset);

	if (count > io_limit)
		count = io_limit;

	if (at24->use_smbus) {
		/* Smaller eeproms can work given some SMBus extension calls */
		if (count > I2C_SMBUS_BLOCK_MAX)
			count = I2C_SMBUS_BLOCK_MAX;
	} else {
		/*
		 * When we have a better choice than SMBus calls, use a
		 * combined I2C message. Write address; then read up to
		 * io_limit data bytes. Note that read page rollover helps us
		 * here (unlike writes). msgbuf is u8 and will cast to our
		 * needs.
		 */
		i = 0;
		if (at24->chip.flags & AT24_FLAG_ADDR16)
			msgbuf[i++] = offset >> 8;
		msgbuf[i++] = offset;

		msg[0].addr = client->addr;
		msg[0].buf = msgbuf;
		msg[0].len = i;

		msg[1].addr = client->addr;
		msg[1].flags = I2C_M_RD;
		msg[1].buf = buf;
		msg[1].len = count;
	}

	/*
	 * Reads fail if the previous write didn't complete yet. We may
	 * loop a few times until this one succeeds, waiting at least
	 * long enough for one entire page write to work.
	 */
	timeout = jiffies + FUNC5(write_timeout);
	do {
		read_time = jiffies;
		if (at24->use_smbus) {
			status = FUNC2(client, offset,
					count, buf);
		} else {
			status = FUNC3(client->adapter, msg, 2);
			if (status == 2)
				status = count;
		}
		FUNC1(&client->dev, "read %zu@%d --> %d (%ld)\n",
				count, offset, status, jiffies);

		if (status == count)
			return count;

		/* REVISIT: at HZ=100, this is sloooow */
		FUNC6(1);
	} while (FUNC7(read_time, timeout));

	return -ETIMEDOUT;
}