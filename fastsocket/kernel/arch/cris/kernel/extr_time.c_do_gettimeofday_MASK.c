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
struct timeval {long tv_sec; long tv_usec; } ;
struct TYPE_2__ {long tv_sec; int tv_nsec; } ;

/* Variables and functions */
 long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 long tickadj ; 
 scalar_t__ time_adjust ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__ xtime ; 

void FUNC4(struct timeval *tv)
{
	unsigned long flags;
	signed long usec, sec;
	FUNC2(flags);
	usec = FUNC0();

        /*
	 * If time_adjust is negative then NTP is slowing the clock
	 * so make sure not to go into next possible interval.
	 * Better to lose some accuracy than have time go backwards..
	 */
	if (FUNC3(time_adjust < 0) && usec > tickadj)
		usec = tickadj;

	sec = xtime.tv_sec;
	usec += xtime.tv_nsec / 1000;
	FUNC1(flags);

	while (usec >= 1000000) {
		usec -= 1000000;
		sec++;
	}

	tv->tv_sec = sec;
	tv->tv_usec = usec;
}