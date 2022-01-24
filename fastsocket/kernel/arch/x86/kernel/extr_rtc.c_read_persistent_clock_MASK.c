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
struct timespec {unsigned long tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_2__ {unsigned long (* get_wallclock ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 () ; 
 TYPE_1__ x86_platform ; 

void FUNC3(struct timespec *ts)
{
	unsigned long retval, flags;

	FUNC0(&rtc_lock, flags);
	retval = x86_platform.get_wallclock();
	FUNC1(&rtc_lock, flags);

	ts->tv_sec = retval;
	ts->tv_nsec = 0;
}