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
 int EINVAL ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC2(struct rtc_time *tm)
{
	if (FUNC1(tm) != 0)
		return -EINVAL;

	tm->tm_sec = FUNC0(tm->tm_sec);
	tm->tm_min = FUNC0(tm->tm_min);
	tm->tm_hour = FUNC0(tm->tm_hour);
	tm->tm_mday = FUNC0(tm->tm_mday);

	tm->tm_mon = FUNC0(tm->tm_mon + 1);

	/* epoch == 1900 */
	if (tm->tm_year < 100 || tm->tm_year > 199)
		return -EINVAL;
	tm->tm_year = FUNC0(tm->tm_year - 100);

	return 0;
}