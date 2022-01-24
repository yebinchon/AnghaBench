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
struct w90p910_ts {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  TS_IDLE 131 
#define  TS_WAIT_NEW_PACKET 130 
#define  TS_WAIT_X_COORD 129 
#define  TS_WAIT_Y_COORD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct w90p910_ts*) ; 
 int /*<<< orphan*/  FUNC6 (struct w90p910_ts*) ; 
 int /*<<< orphan*/  FUNC7 (struct w90p910_ts*) ; 
 int /*<<< orphan*/  FUNC8 (struct w90p910_ts*,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct w90p910_ts *w90p910_ts = dev_id;
	unsigned long flags;

	FUNC3(&w90p910_ts->lock, flags);

	switch (w90p910_ts->state) {
	case TS_WAIT_NEW_PACKET:
		/*
		 * The controller only generates interrupts when pen
		 * is down.
		 */
		FUNC0(&w90p910_ts->timer);
		FUNC6(w90p910_ts);
		break;


	case TS_WAIT_X_COORD:
		FUNC7(w90p910_ts);
		break;

	case TS_WAIT_Y_COORD:
		FUNC8(w90p910_ts, true);
		FUNC5(w90p910_ts);
		FUNC1(&w90p910_ts->timer, jiffies + FUNC2(100));
		break;

	case TS_IDLE:
		break;
	}

	FUNC4(&w90p910_ts->lock, flags);

	return IRQ_HANDLED;
}