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
typedef  int /*<<< orphan*/  tmrHw_INTERVAL_t ;
typedef  size_t tmrHw_ID_t ;
struct TYPE_2__ {int /*<<< orphan*/  Control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* pTmrHw ; 
 int /*<<< orphan*/  tmrHw_CONTROL_ONESHOT ; 
 int /*<<< orphan*/  tmrHw_CONTROL_PERIODIC ; 

tmrHw_INTERVAL_t FUNC2(tmrHw_ID_t timerId,	/*  [ IN ] Timer Id */
						tmrHw_INTERVAL_t msec	/*  [ IN ] Interval in milli-second */
) {
	FUNC0(timerId);

	/* Set timer mode periodic */
	pTmrHw[timerId].Control |= tmrHw_CONTROL_PERIODIC;
	pTmrHw[timerId].Control &= ~tmrHw_CONTROL_ONESHOT;

	return FUNC1(timerId, msec);
}