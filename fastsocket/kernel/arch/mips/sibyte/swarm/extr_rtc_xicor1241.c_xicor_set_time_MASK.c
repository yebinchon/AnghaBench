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
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_mday; int tm_mon; int tm_hour; } ;

/* Variables and functions */
 int /*<<< orphan*/  X1241REG_DT ; 
 int /*<<< orphan*/  X1241REG_HR ; 
 int X1241REG_HR_MIL ; 
 int /*<<< orphan*/  X1241REG_MN ; 
 int /*<<< orphan*/  X1241REG_MO ; 
 int /*<<< orphan*/  X1241REG_SC ; 
 int /*<<< orphan*/  X1241REG_SR ; 
 int X1241REG_SR_RWEL ; 
 int X1241REG_SR_WEL ; 
 int /*<<< orphan*/  X1241REG_Y2K ; 
 int /*<<< orphan*/  X1241REG_YR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(unsigned long t)
{
	struct rtc_time tm;
	int tmp;
	unsigned long flags;

	FUNC1(t, &tm);
	tm.tm_year += 1900;

	FUNC2(&rtc_lock, flags);
	/* unlock writes to the CCR */
	FUNC5(X1241REG_SR, X1241REG_SR_WEL);
	FUNC5(X1241REG_SR, X1241REG_SR_WEL | X1241REG_SR_RWEL);

	/* trivial ones */
	tm.tm_sec = FUNC0(tm.tm_sec);
	FUNC5(X1241REG_SC, tm.tm_sec);

	tm.tm_min = FUNC0(tm.tm_min);
	FUNC5(X1241REG_MN, tm.tm_min);

	tm.tm_mday = FUNC0(tm.tm_mday);
	FUNC5(X1241REG_DT, tm.tm_mday);

	/* tm_mon starts from 0, *ick* */
	tm.tm_mon ++;
	tm.tm_mon = FUNC0(tm.tm_mon);
	FUNC5(X1241REG_MO, tm.tm_mon);

	/* year is split */
	tmp = tm.tm_year / 100;
	tm.tm_year %= 100;
	FUNC5(X1241REG_YR, tm.tm_year);
	FUNC5(X1241REG_Y2K, tmp);

	/* hour is the most tricky one */
	tmp = FUNC4(X1241REG_HR);
	if (tmp & X1241REG_HR_MIL) {
		/* 24 hour format */
		tm.tm_hour = FUNC0(tm.tm_hour);
		tmp = (tmp & ~0x3f) | (tm.tm_hour & 0x3f);
	} else {
		/* 12 hour format, with 0x2 for pm */
		tmp = tmp & ~0x3f;
		if (tm.tm_hour >= 12) {
			tmp |= 0x20;
			tm.tm_hour -= 12;
		}
		tm.tm_hour = FUNC0(tm.tm_hour);
		tmp |= tm.tm_hour;
	}
	FUNC5(X1241REG_HR, tmp);

	FUNC5(X1241REG_SR, 0);
	FUNC3(&rtc_lock, flags);

	return 0;
}