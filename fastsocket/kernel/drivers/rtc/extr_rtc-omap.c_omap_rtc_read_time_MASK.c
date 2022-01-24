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
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_RTC_DAYS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_HOURS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_MINUTES_REG ; 
 int /*<<< orphan*/  OMAP_RTC_MONTHS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_SECONDS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_YEARS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	/* we don't report wday/yday/isdst ... */
	FUNC1();
	FUNC4();

	tm->tm_sec = FUNC3(OMAP_RTC_SECONDS_REG);
	tm->tm_min = FUNC3(OMAP_RTC_MINUTES_REG);
	tm->tm_hour = FUNC3(OMAP_RTC_HOURS_REG);
	tm->tm_mday = FUNC3(OMAP_RTC_DAYS_REG);
	tm->tm_mon = FUNC3(OMAP_RTC_MONTHS_REG);
	tm->tm_year = FUNC3(OMAP_RTC_YEARS_REG);

	FUNC2();

	FUNC0(tm);
	return 0;
}