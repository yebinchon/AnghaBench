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
struct w90p910_ts {scalar_t__ state; int /*<<< orphan*/  lock; scalar_t__ ts_reg; } ;

/* Variables and functions */
 int ADC_DOWN ; 
 scalar_t__ TS_WAIT_NEW_PACKET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct w90p910_ts*,int) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct w90p910_ts *w90p910_ts = (struct w90p910_ts *) data;
	unsigned long flags;

	FUNC1(&w90p910_ts->lock, flags);

	if (w90p910_ts->state == TS_WAIT_NEW_PACKET &&
	    !(FUNC0(w90p910_ts->ts_reg + 0x04) & ADC_DOWN)) {

		FUNC3(w90p910_ts, false);
	}

	FUNC2(&w90p910_ts->lock, flags);
}