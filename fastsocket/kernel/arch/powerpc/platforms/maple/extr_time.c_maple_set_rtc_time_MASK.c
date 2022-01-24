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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mon; int tm_mday; int tm_year; } ;

/* Variables and functions */
 scalar_t__ RTC_ALWAYS_BCD ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 int /*<<< orphan*/  RTC_DAY_OF_MONTH ; 
 unsigned char RTC_DIV_RESET2 ; 
 unsigned char RTC_DM_BINARY ; 
 int /*<<< orphan*/  RTC_FREQ_SELECT ; 
 int /*<<< orphan*/  RTC_HOURS ; 
 int /*<<< orphan*/  RTC_MINUTES ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_SECONDS ; 
 unsigned char RTC_SET ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 int FUNC0 (int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct rtc_time *tm)
{
	unsigned char save_control, save_freq_select;
	int sec, min, hour, mon, mday, year;

	FUNC3(&rtc_lock);

	save_control = FUNC1(RTC_CONTROL); /* tell the clock it's being set */

	FUNC2((save_control|RTC_SET), RTC_CONTROL);

	save_freq_select = FUNC1(RTC_FREQ_SELECT); /* stop and reset prescaler */

	FUNC2((save_freq_select|RTC_DIV_RESET2), RTC_FREQ_SELECT);

	sec = tm->tm_sec;
	min = tm->tm_min;
	hour = tm->tm_hour;
	mon = tm->tm_mon;
	mday = tm->tm_mday;
	year = tm->tm_year;

	if (!(save_control & RTC_DM_BINARY) || RTC_ALWAYS_BCD) {
		sec = FUNC0(sec);
		min = FUNC0(min);
		hour = FUNC0(hour);
		mon = FUNC0(mon);
		mday = FUNC0(mday);
		year = FUNC0(year);
	}
	FUNC2(sec, RTC_SECONDS);
	FUNC2(min, RTC_MINUTES);
	FUNC2(hour, RTC_HOURS);
	FUNC2(mon, RTC_MONTH);
	FUNC2(mday, RTC_DAY_OF_MONTH);
	FUNC2(year, RTC_YEAR);

	/* The following flags have to be released exactly in this order,
	 * otherwise the DS12887 (popular MC146818A clone with integrated
	 * battery and quartz) will not reset the oscillator and will not
	 * update precisely 500 ms later. You won't find this mentioned in
	 * the Dallas Semiconductor data sheets, but who believes data
	 * sheets anyway ...                           -- Markus Kuhn
	 */
	FUNC2(save_control, RTC_CONTROL);
	FUNC2(save_freq_select, RTC_FREQ_SELECT);

	FUNC4(&rtc_lock);

	return 0;
}