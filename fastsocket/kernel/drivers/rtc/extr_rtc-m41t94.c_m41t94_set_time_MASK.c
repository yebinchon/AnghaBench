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
struct spi_device {int dummy; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int M41T94_BIT_CB ; 
 int M41T94_BIT_CEB ; 
 size_t M41T94_REG_DAY ; 
 size_t M41T94_REG_HOURS ; 
 size_t M41T94_REG_MINUTES ; 
 size_t M41T94_REG_MONTH ; 
 int M41T94_REG_SECONDS ; 
 size_t M41T94_REG_WDAY ; 
 size_t M41T94_REG_YEAR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,int,int,int,int,int,int,int) ; 
 int FUNC2 (struct spi_device*,int*,int) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct spi_device *spi = FUNC3(dev);
	u8 buf[8]; /* write cmd + 7 registers */

	FUNC1(dev, "%s secs=%d, mins=%d, "
		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
		"write", tm->tm_sec, tm->tm_min,
		tm->tm_hour, tm->tm_mday,
		tm->tm_mon, tm->tm_year, tm->tm_wday);

	buf[0] = 0x80 | M41T94_REG_SECONDS; /* write time + date */
	buf[M41T94_REG_SECONDS] = FUNC0(tm->tm_sec);
	buf[M41T94_REG_MINUTES] = FUNC0(tm->tm_min);
	buf[M41T94_REG_HOURS]   = FUNC0(tm->tm_hour);
	buf[M41T94_REG_WDAY]    = FUNC0(tm->tm_wday + 1);
	buf[M41T94_REG_DAY]     = FUNC0(tm->tm_mday);
	buf[M41T94_REG_MONTH]   = FUNC0(tm->tm_mon + 1);

	buf[M41T94_REG_HOURS] |= M41T94_BIT_CEB;
	if (tm->tm_year >= 100)
		buf[M41T94_REG_HOURS] |= M41T94_BIT_CB;
	buf[M41T94_REG_YEAR] = FUNC0(tm->tm_year % 100);

	return FUNC2(spi, buf, 8);
}