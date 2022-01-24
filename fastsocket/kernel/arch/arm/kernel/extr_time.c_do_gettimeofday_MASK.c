#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {unsigned long tv_sec; unsigned long tv_usec; } ;
struct TYPE_4__ {unsigned long (* offset ) () ;} ;
struct TYPE_3__ {unsigned long tv_sec; int tv_nsec; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC2 () ; 
 TYPE_2__* system_timer ; 
 TYPE_1__ xtime ; 
 int /*<<< orphan*/  xtime_lock ; 

void FUNC3(struct timeval *tv)
{
	unsigned long flags;
	unsigned long seq;
	unsigned long usec, sec;

	do {
		seq = FUNC0(&xtime_lock, flags);
		usec = system_timer->offset();
		sec = xtime.tv_sec;
		usec += xtime.tv_nsec / 1000;
	} while (FUNC1(&xtime_lock, seq, flags));

	/* usec may have gone up a lot: be safe */
	while (usec >= 1000000) {
		usec -= 1000000;
		sec++;
	}

	tv->tv_sec = sec;
	tv->tv_usec = usec;
}