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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 int /*<<< orphan*/  M41T81REG_DT ; 
 int /*<<< orphan*/  M41T81REG_DY ; 
 int /*<<< orphan*/  M41T81REG_HR ; 
 int /*<<< orphan*/  M41T81REG_MN ; 
 int /*<<< orphan*/  M41T81REG_MO ; 
 int /*<<< orphan*/  M41T81REG_SC ; 
 int /*<<< orphan*/  M41T81REG_YR ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(unsigned long t)
{
	struct rtc_time tm;
	unsigned long flags;

	/* Note we don't care about the century */
	FUNC3(t, &tm);

	/*
	 * Note the write order matters as it ensures the correctness.
	 * When we write sec, 10th sec is clear.  It is reasonable to
	 * believe we should finish writing min within a second.
	 */

	FUNC4(&rtc_lock, flags);
	tm.tm_sec = FUNC0(tm.tm_sec);
	FUNC2(M41T81REG_SC, tm.tm_sec);

	tm.tm_min = FUNC0(tm.tm_min);
	FUNC2(M41T81REG_MN, tm.tm_min);

	tm.tm_hour = FUNC0(tm.tm_hour);
	tm.tm_hour = (tm.tm_hour & 0x3f) | (FUNC1(M41T81REG_HR) & 0xc0);
	FUNC2(M41T81REG_HR, tm.tm_hour);

	/* tm_wday starts from 0 to 6 */
	if (tm.tm_wday == 0) tm.tm_wday = 7;
	tm.tm_wday = FUNC0(tm.tm_wday);
	FUNC2(M41T81REG_DY, tm.tm_wday);

	tm.tm_mday = FUNC0(tm.tm_mday);
	FUNC2(M41T81REG_DT, tm.tm_mday);

	/* tm_mon starts from 0, *ick* */
	tm.tm_mon ++;
	tm.tm_mon = FUNC0(tm.tm_mon);
	FUNC2(M41T81REG_MO, tm.tm_mon);

	/* we don't do century, everything is beyond 2000 */
	tm.tm_year %= 100;
	tm.tm_year = FUNC0(tm.tm_year);
	FUNC2(M41T81REG_YR, tm.tm_year);
	FUNC5(&rtc_lock, flags);

	return 0;
}