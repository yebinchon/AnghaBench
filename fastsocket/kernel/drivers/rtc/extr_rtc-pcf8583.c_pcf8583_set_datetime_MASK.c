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
struct rtc_time {int tm_year; int tm_wday; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, struct rtc_time *dt, int datetoo)
{
	unsigned char buf[8];
	int ret, len = 6;

	buf[0] = 0;
	buf[1] = FUNC1(client) | 0x80;
	buf[2] = 0;
	buf[3] = FUNC0(dt->tm_sec);
	buf[4] = FUNC0(dt->tm_min);
	buf[5] = FUNC0(dt->tm_hour);

	if (datetoo) {
		len = 8;
		buf[6] = FUNC0(dt->tm_mday) | (dt->tm_year << 6);
		buf[7] = FUNC0(dt->tm_mon + 1)  | (dt->tm_wday << 5);
	}

	ret = FUNC2(client, (char *)buf, len);
	if (ret != len)
		return -EIO;

	buf[1] = FUNC1(client);
	ret = FUNC2(client, (char *)buf, 2);

	return ret == 2 ? 0 : -EIO;
}