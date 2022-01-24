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
struct ucb1x00_ts {int /*<<< orphan*/ * rtask; int /*<<< orphan*/  ucb; int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; int /*<<< orphan*/  irq_wait; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UCB_IRQ_TSPX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ucb1x00_ts* FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct ucb1x00_ts*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucb1x00_ts*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  ucb1x00_thread ; 
 int /*<<< orphan*/  ucb1x00_ts_irq ; 
 int /*<<< orphan*/  FUNC9 (struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  FUNC10 (struct ucb1x00_ts*) ; 

__attribute__((used)) static int FUNC11(struct input_dev *idev)
{
	struct ucb1x00_ts *ts = FUNC3(idev);
	int ret = 0;

	FUNC0(ts->rtask);

	FUNC2(&ts->irq_wait);
	ret = FUNC8(ts->ucb, UCB_IRQ_TSPX, ucb1x00_ts_irq, ts);
	if (ret < 0)
		goto out;

	/*
	 * If we do this at all, we should allow the user to
	 * measure and read the X and Y resistance at any time.
	 */
	FUNC6(ts->ucb);
	ts->x_res = FUNC9(ts);
	ts->y_res = FUNC10(ts);
	FUNC5(ts->ucb);

	ts->rtask = FUNC4(ucb1x00_thread, ts, "ktsd");
	if (!FUNC1(ts->rtask)) {
		ret = 0;
	} else {
		FUNC7(ts->ucb, UCB_IRQ_TSPX, ts);
		ts->rtask = NULL;
		ret = -EFAULT;
	}

 out:
	return ret;
}