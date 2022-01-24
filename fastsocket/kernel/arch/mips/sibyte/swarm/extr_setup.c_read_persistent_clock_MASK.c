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
struct timespec {unsigned long tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
#define  RTC_M4LT81 130 
#define  RTC_NONE 129 
#define  RTC_XICOR 128 
 unsigned long FUNC0 () ; 
 unsigned long FUNC1 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int swarm_rtc_type ; 
 unsigned long FUNC2 () ; 

void FUNC3(struct timespec *ts)
{
	unsigned long sec;

	switch (swarm_rtc_type) {
	case RTC_XICOR:
		sec = FUNC2();
		break;

	case RTC_M4LT81:
		sec = FUNC0();
		break;

	case RTC_NONE:
	default:
		sec = FUNC1(2000, 1, 1, 0, 0, 0);
		break;
	}
	ts->tv_sec = sec;
	ts->tv_nsec = 0;
}