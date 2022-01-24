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
typedef  size_t u8 ;
struct rtc_time {size_t tm_sec; size_t tm_min; size_t tm_hour; size_t tm_wday; size_t tm_mday; size_t tm_mon; size_t tm_year; } ;
struct ds1305 {int /*<<< orphan*/  spi; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t DS1305_HOUR ; 
 size_t DS1305_MDAY ; 
 size_t DS1305_MIN ; 
 size_t DS1305_MON ; 
 int DS1305_RTC_LEN ; 
 size_t DS1305_SEC ; 
 size_t DS1305_WDAY ; 
 size_t DS1305_YEAR ; 
 void* FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 struct ds1305* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*,size_t,size_t,size_t,size_t,size_t,size_t,size_t) ; 
 int FUNC4 (struct rtc_time*) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t*,int,size_t*,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *time)
{
	struct ds1305	*ds1305 = FUNC2(dev);
	u8		addr = DS1305_SEC;
	u8		buf[DS1305_RTC_LEN];
	int		status;

	/* Use write-then-read to get all the date/time registers
	 * since dma from stack is nonportable
	 */
	status = FUNC5(ds1305->spi, &addr, sizeof addr,
			buf, sizeof buf);
	if (status < 0)
		return status;

	FUNC3(dev, "%s: %02x %02x %02x, %02x %02x %02x %02x\n",
		"read", buf[0], buf[1], buf[2], buf[3],
		buf[4], buf[5], buf[6]);

	/* Decode the registers */
	time->tm_sec = FUNC0(buf[DS1305_SEC]);
	time->tm_min = FUNC0(buf[DS1305_MIN]);
	time->tm_hour = FUNC1(buf[DS1305_HOUR]);
	time->tm_wday = buf[DS1305_WDAY] - 1;
	time->tm_mday = FUNC0(buf[DS1305_MDAY]);
	time->tm_mon = FUNC0(buf[DS1305_MON]) - 1;
	time->tm_year = FUNC0(buf[DS1305_YEAR]) + 100;

	FUNC3(dev, "%s secs=%d, mins=%d, "
		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
		"read", time->tm_sec, time->tm_min,
		time->tm_hour, time->tm_mday,
		time->tm_mon, time->tm_year, time->tm_wday);

	/* Time may not be set */
	return FUNC4(time);
}