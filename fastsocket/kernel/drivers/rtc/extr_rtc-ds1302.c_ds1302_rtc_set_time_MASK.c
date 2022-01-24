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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_ADDR_DATE ; 
 int /*<<< orphan*/  RTC_ADDR_DAY ; 
 int /*<<< orphan*/  RTC_ADDR_HOUR ; 
 int /*<<< orphan*/  RTC_ADDR_MIN ; 
 int /*<<< orphan*/  RTC_ADDR_MON ; 
 int /*<<< orphan*/  RTC_ADDR_SEC ; 
 int /*<<< orphan*/  RTC_ADDR_YEAR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	/* Stop RTC */
	FUNC2(RTC_ADDR_SEC, FUNC1(RTC_ADDR_SEC) | 0x80);

	FUNC2(RTC_ADDR_SEC, FUNC0(tm->tm_sec));
	FUNC2(RTC_ADDR_MIN, FUNC0(tm->tm_min));
	FUNC2(RTC_ADDR_HOUR, FUNC0(tm->tm_hour));
	FUNC2(RTC_ADDR_DAY, FUNC0(tm->tm_wday));
	FUNC2(RTC_ADDR_DATE, FUNC0(tm->tm_mday));
	FUNC2(RTC_ADDR_MON, FUNC0(tm->tm_mon + 1));
	FUNC2(RTC_ADDR_YEAR, FUNC0(tm->tm_year % 100));

	/* Start RTC */
	FUNC2(RTC_ADDR_SEC, FUNC1(RTC_ADDR_SEC) & ~0x80);

	return 0;
}