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
 int /*<<< orphan*/  X1241REG_DT ; 
 int /*<<< orphan*/  X1241REG_HR ; 
 unsigned int X1241REG_HR_MIL ; 
 int /*<<< orphan*/  X1241REG_MN ; 
 int /*<<< orphan*/  X1241REG_MO ; 
 int /*<<< orphan*/  X1241REG_SC ; 
 int /*<<< orphan*/  X1241REG_Y2K ; 
 int /*<<< orphan*/  X1241REG_YR ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned long FUNC1 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

unsigned long FUNC5(void)
{
	unsigned int year, mon, day, hour, min, sec, y2k;
	unsigned long flags;

	FUNC2(&rtc_lock, flags);
	sec = FUNC4(X1241REG_SC);
	min = FUNC4(X1241REG_MN);
	hour = FUNC4(X1241REG_HR);

	if (hour & X1241REG_HR_MIL) {
		hour &= 0x3f;
	} else {
		if (hour & 0x20)
			hour = (hour & 0xf) + 0x12;
	}

	day = FUNC4(X1241REG_DT);
	mon = FUNC4(X1241REG_MO);
	year = FUNC4(X1241REG_YR);
	y2k = FUNC4(X1241REG_Y2K);
	FUNC3(&rtc_lock, flags);

	sec = FUNC0(sec);
	min = FUNC0(min);
	hour = FUNC0(hour);
	day = FUNC0(day);
	mon = FUNC0(mon);
	year = FUNC0(year);
	y2k = FUNC0(y2k);

	year += (y2k * 100);

	return FUNC1(year, mon, day, hour, min, sec);
}