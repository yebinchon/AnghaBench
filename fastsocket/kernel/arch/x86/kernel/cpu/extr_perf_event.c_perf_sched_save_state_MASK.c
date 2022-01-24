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
struct perf_sched {size_t saved_states; int /*<<< orphan*/  state; int /*<<< orphan*/ * saved; } ;

/* Variables and functions */
 size_t SCHED_STATES_MAX ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct perf_sched *sched)
{
	if (FUNC0(sched->saved_states >= SCHED_STATES_MAX))
		return;

	sched->saved[sched->saved_states] = sched->state;
	sched->saved_states++;
}