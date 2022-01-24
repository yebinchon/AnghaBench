#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int /*<<< orphan*/  tm_wday; scalar_t__ tm_year; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; scalar_t__ tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; } ;
struct intersil_dt {int /*<<< orphan*/  weekday; scalar_t__ year; int /*<<< orphan*/  day; int /*<<< orphan*/  month; scalar_t__ second; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; scalar_t__ csec; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_reg; int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  START_VAL ; 
 int /*<<< orphan*/  STOP_VAL ; 
 TYPE_1__* intersil_clock ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

int FUNC2(int set, struct rtc_time *t)
{
	volatile struct intersil_dt *todintersil;
	unsigned long flags;

        todintersil = (struct intersil_dt *) &intersil_clock->counter;

	FUNC1(flags);

	intersil_clock->cmd_reg = STOP_VAL;

	/* set or read the clock */
	if(set) {
		todintersil->csec = 0;
		todintersil->hour = t->tm_hour;
		todintersil->minute = t->tm_min;
		todintersil->second = t->tm_sec;
		todintersil->month = t->tm_mon;
		todintersil->day = t->tm_mday;
		todintersil->year = t->tm_year - 68;
		todintersil->weekday = t->tm_wday;
	} else {
		/* read clock */
		t->tm_sec = todintersil->csec;
		t->tm_hour = todintersil->hour;
		t->tm_min = todintersil->minute;
		t->tm_sec = todintersil->second;
		t->tm_mon = todintersil->month;
		t->tm_mday = todintersil->day;
		t->tm_year = todintersil->year + 68;
		t->tm_wday = todintersil->weekday;
	}

	intersil_clock->cmd_reg = START_VAL;

	FUNC0(flags);

	return 0;

}