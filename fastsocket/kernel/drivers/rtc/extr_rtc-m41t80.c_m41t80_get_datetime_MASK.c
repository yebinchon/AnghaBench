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
struct rtc_time {int tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct i2c_msg {int len; int* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int M41T80_DATETIME_REG_SIZE ; 
 size_t M41T80_REG_DAY ; 
 size_t M41T80_REG_HOUR ; 
 size_t M41T80_REG_MIN ; 
 size_t M41T80_REG_MON ; 
 int M41T80_REG_SEC ; 
 size_t M41T80_REG_WDAY ; 
 size_t M41T80_REG_YEAR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			       struct rtc_time *tm)
{
	u8 buf[M41T80_DATETIME_REG_SIZE], dt_addr[1] = { M41T80_REG_SEC };
	struct i2c_msg msgs[] = {
		{
			.addr	= client->addr,
			.flags	= 0,
			.len	= 1,
			.buf	= dt_addr,
		},
		{
			.addr	= client->addr,
			.flags	= I2C_M_RD,
			.len	= M41T80_DATETIME_REG_SIZE - M41T80_REG_SEC,
			.buf	= buf + M41T80_REG_SEC,
		},
	};

	if (FUNC2(client->adapter, msgs, 2) < 0) {
		FUNC1(&client->dev, "read error\n");
		return -EIO;
	}

	tm->tm_sec = FUNC0(buf[M41T80_REG_SEC] & 0x7f);
	tm->tm_min = FUNC0(buf[M41T80_REG_MIN] & 0x7f);
	tm->tm_hour = FUNC0(buf[M41T80_REG_HOUR] & 0x3f);
	tm->tm_mday = FUNC0(buf[M41T80_REG_DAY] & 0x3f);
	tm->tm_wday = buf[M41T80_REG_WDAY] & 0x07;
	tm->tm_mon = FUNC0(buf[M41T80_REG_MON] & 0x1f) - 1;

	/* assume 20YY not 19YY, and ignore the Century Bit */
	tm->tm_year = FUNC0(buf[M41T80_REG_YEAR]) + 100;
	return 0;
}