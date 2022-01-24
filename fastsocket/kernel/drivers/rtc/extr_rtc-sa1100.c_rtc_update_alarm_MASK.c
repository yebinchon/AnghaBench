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
struct rtc_time {int dummy; } ;

/* Variables and functions */
 unsigned long RCNR ; 
 unsigned long RTAR ; 
 int RTSR ; 
 int RTSR_AL ; 
 int RTSR_ALE ; 
 int RTSR_HZE ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_time*,struct rtc_time*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct rtc_time*) ; 
 int FUNC2 (struct rtc_time*,unsigned long*) ; 

__attribute__((used)) static int FUNC3(struct rtc_time *alrm)
{
	struct rtc_time alarm_tm, now_tm;
	unsigned long now, time;
	int ret;

	do {
		now = RCNR;
		FUNC1(now, &now_tm);
		FUNC0(&alarm_tm, &now_tm, alrm);
		ret = FUNC2(&alarm_tm, &time);
		if (ret != 0)
			break;

		RTSR = RTSR & (RTSR_HZE|RTSR_ALE|RTSR_AL);
		RTAR = time;
	} while (now != RCNR);

	return ret;
}