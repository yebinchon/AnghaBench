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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_DAY_OF_MONTH ; 
 int /*<<< orphan*/  RTC_HOURS ; 
 int /*<<< orphan*/  RTC_MINUTES ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_SECONDS ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void
FUNC4(struct rtc_time *rtc_tm) 
{
	unsigned long flags;

	FUNC3(flags);

	rtc_tm->tm_sec = FUNC0(RTC_SECONDS);
	rtc_tm->tm_min = FUNC0(RTC_MINUTES);
	rtc_tm->tm_hour = FUNC0(RTC_HOURS);
	rtc_tm->tm_mday = FUNC0(RTC_DAY_OF_MONTH);
	rtc_tm->tm_mon = FUNC0(RTC_MONTH);
	rtc_tm->tm_year = FUNC0(RTC_YEAR);

	FUNC2(flags);
	
	rtc_tm->tm_sec = FUNC1(rtc_tm->tm_sec);
	rtc_tm->tm_min = FUNC1(rtc_tm->tm_min);
	rtc_tm->tm_hour = FUNC1(rtc_tm->tm_hour);
	rtc_tm->tm_mday = FUNC1(rtc_tm->tm_mday);
	rtc_tm->tm_mon = FUNC1(rtc_tm->tm_mon);
	rtc_tm->tm_year = FUNC1(rtc_tm->tm_year);

	/*
	 * Account for differences between how the RTC uses the values
	 * and how they are defined in a struct rtc_time;
	 */

	if (rtc_tm->tm_year <= 69)
		rtc_tm->tm_year += 100;

	rtc_tm->tm_mon--;
}