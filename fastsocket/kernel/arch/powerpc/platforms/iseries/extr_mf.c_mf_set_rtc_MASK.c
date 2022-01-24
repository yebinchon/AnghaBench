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
typedef  char u8 ;
struct rtc_time {int tm_year; char tm_sec; char tm_min; char tm_hour; char tm_mday; char tm_mon; } ;
typedef  int /*<<< orphan*/  ce_time ;

/* Variables and functions */
 char FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rtc_time *tm)
{
	char ce_time[12];
	u8 day, mon, hour, min, sec, y1, y2;
	unsigned year;

	year = 1900 + tm->tm_year;
	y1 = year / 100;
	y2 = year % 100;

	sec = tm->tm_sec;
	min = tm->tm_min;
	hour = tm->tm_hour;
	day = tm->tm_mday;
	mon = tm->tm_mon + 1;

	sec = FUNC0(sec);
	min = FUNC0(min);
	hour = FUNC0(hour);
	mon = FUNC0(mon);
	day = FUNC0(day);
	y1 = FUNC0(y1);
	y2 = FUNC0(y2);

	FUNC1(ce_time, 0, sizeof(ce_time));
	ce_time[3] = 0x41;
	ce_time[4] = y1;
	ce_time[5] = y2;
	ce_time[6] = sec;
	ce_time[7] = min;
	ce_time[8] = hour;
	ce_time[10] = day;
	ce_time[11] = mon;

	return FUNC2(ce_time, NULL);
}