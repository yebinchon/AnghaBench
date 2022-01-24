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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec*,scalar_t__,scalar_t__) ; 
 TYPE_1__ xtime ; 

void FUNC1(struct timespec *delta, struct timespec *rtc)
{
	FUNC0(delta,
				xtime.tv_sec - rtc->tv_sec,
				xtime.tv_nsec - rtc->tv_nsec);
}