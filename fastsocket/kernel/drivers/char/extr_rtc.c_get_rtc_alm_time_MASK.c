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
struct rtc_time {void* tm_hour; void* tm_min; void* tm_sec; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTC_ALWAYS_BCD ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 unsigned char RTC_DM_BINARY ; 
 int /*<<< orphan*/  RTC_HOURS_ALARM ; 
 int /*<<< orphan*/  RTC_MINUTES_ALARM ; 
 int /*<<< orphan*/  RTC_SECONDS_ALARM ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rtc_time *alm_tm)
{
	unsigned char ctrl;

	/*
	 * Only the values that we read from the RTC are set. That
	 * means only tm_hour, tm_min, and tm_sec.
	 */
	FUNC2(&rtc_lock);
	alm_tm->tm_sec = FUNC0(RTC_SECONDS_ALARM);
	alm_tm->tm_min = FUNC0(RTC_MINUTES_ALARM);
	alm_tm->tm_hour = FUNC0(RTC_HOURS_ALARM);
	ctrl = FUNC0(RTC_CONTROL);
	FUNC3(&rtc_lock);

	if (!(ctrl & RTC_DM_BINARY) || RTC_ALWAYS_BCD) {
		alm_tm->tm_sec = FUNC1(alm_tm->tm_sec);
		alm_tm->tm_min = FUNC1(alm_tm->tm_min);
		alm_tm->tm_hour = FUNC1(alm_tm->tm_hour);
	}
}