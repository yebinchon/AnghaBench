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
struct timespec {int dummy; } ;

/* Variables and functions */
 scalar_t__ TOD_UNIX_EPOCH ; 
 scalar_t__ sched_clock_base_cc ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct timespec*) ; 

void FUNC1(struct timespec *ts)
{
	FUNC0(sched_clock_base_cc - TOD_UNIX_EPOCH, ts);
}