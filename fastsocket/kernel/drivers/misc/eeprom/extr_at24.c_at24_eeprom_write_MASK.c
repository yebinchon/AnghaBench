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
struct i2c_msg {unsigned int* buf; int len; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  page_size; } ;
struct at24_data {size_t write_max; unsigned int* writebuf; scalar_t__ use_smbus; TYPE_1__ chip; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int AT24_FLAG_ADDR16 ; 
 int ETIMEDOUT ; 
 struct i2c_client* FUNC0 (struct at24_data*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,unsigned int,int,unsigned long) ; 
 int FUNC2 (struct i2c_client*,unsigned int,size_t,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,char const*,size_t) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned int FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  write_timeout ; 

__attribute__((used)) static ssize_t FUNC9(struct at24_data *at24, const char *buf,
		unsigned offset, size_t count)
{
	struct i2c_client *client;
	struct i2c_msg msg;
	ssize_t status;
	unsigned long timeout, write_time;
	unsigned next_page;

	/* Get corresponding I2C address and adjust offset */
	client = FUNC0(at24, &offset);

	/* write_max is at most a page */
	if (count > at24->write_max)
		count = at24->write_max;

	/* Never roll over backwards, to the start of this page */
	next_page = FUNC7(offset + 1, at24->chip.page_size);
	if (offset + count > next_page)
		count = next_page - offset;

	/* If we'll use I2C calls for I/O, set up the message */
	if (!at24->use_smbus) {
		int i = 0;

		msg.addr = client->addr;
		msg.flags = 0;

		/* msg.buf is u8 and casts will mask the values */
		msg.buf = at24->writebuf;
		if (at24->chip.flags & AT24_FLAG_ADDR16)
			msg.buf[i++] = offset >> 8;

		msg.buf[i++] = offset;
		FUNC4(&msg.buf[i], buf, count);
		msg.len = i + count;
	}

	/*
	 * Writes fail if the previous one didn't complete yet. We may
	 * loop a few times until this one succeeds, waiting at least
	 * long enough for one entire page write to work.
	 */
	timeout = jiffies + FUNC5(write_timeout);
	do {
		write_time = jiffies;
		if (at24->use_smbus) {
			status = FUNC2(client,
					offset, count, buf);
			if (status == 0)
				status = count;
		} else {
			status = FUNC3(client->adapter, &msg, 1);
			if (status == 1)
				status = count;
		}
		FUNC1(&client->dev, "write %zu@%d --> %zd (%ld)\n",
				count, offset, status, jiffies);

		if (status == count)
			return count;

		/* REVISIT: at HZ=100, this is sloooow */
		FUNC6(1);
	} while (FUNC8(write_time, timeout));

	return -ETIMEDOUT;
}