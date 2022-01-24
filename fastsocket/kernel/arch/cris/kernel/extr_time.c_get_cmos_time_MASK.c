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

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_DAY_OF_MONTH ; 
 int /*<<< orphan*/  RTC_HOURS ; 
 int /*<<< orphan*/  RTC_MINUTES ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_SECONDS ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned long FUNC2 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 

unsigned long
FUNC3(void)
{
	unsigned int year, mon, day, hour, min, sec;

	sec = FUNC0(RTC_SECONDS);
	min = FUNC0(RTC_MINUTES);
	hour = FUNC0(RTC_HOURS);
	day = FUNC0(RTC_DAY_OF_MONTH);
	mon = FUNC0(RTC_MONTH);
	year = FUNC0(RTC_YEAR);

	sec = FUNC1(sec);
	min = FUNC1(min);
	hour = FUNC1(hour);
	day = FUNC1(day);
	mon = FUNC1(mon);
	year = FUNC1(year);

	if ((year += 1900) < 1970)
		year += 100;

	return FUNC2(year, mon, day, hour, min, sec);
}