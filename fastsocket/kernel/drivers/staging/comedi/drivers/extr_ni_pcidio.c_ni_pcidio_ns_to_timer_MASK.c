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

/* Variables and functions */
 int TIMER_BASE ; 
#define  TRIG_ROUND_DOWN 130 
#define  TRIG_ROUND_NEAREST 129 
#define  TRIG_ROUND_UP 128 

__attribute__((used)) static int FUNC0(int *nanosec, int round_mode)
{
	int divider, base;

	base = TIMER_BASE;

	switch (round_mode) {
	case TRIG_ROUND_NEAREST:
	default:
		divider = (*nanosec + base / 2) / base;
		break;
	case TRIG_ROUND_DOWN:
		divider = (*nanosec) / base;
		break;
	case TRIG_ROUND_UP:
		divider = (*nanosec + base - 1) / base;
		break;
	}

	*nanosec = base * divider;
	return divider;
}