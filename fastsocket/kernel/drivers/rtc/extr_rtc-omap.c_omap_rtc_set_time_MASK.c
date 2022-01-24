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
struct rtc_time {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OMAP_RTC_DAYS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_HOURS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_MINUTES_REG ; 
 int /*<<< orphan*/  OMAP_RTC_MONTHS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_SECONDS_REG ; 
 int /*<<< orphan*/  OMAP_RTC_YEARS_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	if (FUNC4(tm) < 0)
		return -EINVAL;
	FUNC0();
	FUNC2();

	FUNC3(tm->tm_year, OMAP_RTC_YEARS_REG);
	FUNC3(tm->tm_mon, OMAP_RTC_MONTHS_REG);
	FUNC3(tm->tm_mday, OMAP_RTC_DAYS_REG);
	FUNC3(tm->tm_hour, OMAP_RTC_HOURS_REG);
	FUNC3(tm->tm_min, OMAP_RTC_MINUTES_REG);
	FUNC3(tm->tm_sec, OMAP_RTC_SECONDS_REG);

	FUNC1();

	return 0;
}