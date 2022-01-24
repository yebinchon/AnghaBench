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
typedef  unsigned long tmrHw_RATE_t ;
typedef  int /*<<< orphan*/  tmrHw_ID_t ;
typedef  unsigned long tmrHw_COUNT_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(tmrHw_ID_t timerId,	/*  [ IN ] Timer id */
		  unsigned long usecs /*  [ IN ] usec to delay */
) {
	tmrHw_RATE_t usec_tick_rate;
	tmrHw_COUNT_t start_time;
	tmrHw_COUNT_t delta_time;

	start_time = FUNC0(timerId);
	usec_tick_rate = FUNC1(FUNC2(timerId), 1000000);
	delta_time = usecs * usec_tick_rate;

	/* Busy wait */
	while (delta_time > (FUNC0(timerId) - start_time))
		;
}