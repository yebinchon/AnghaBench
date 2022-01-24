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
struct ucb1400_ts {int /*<<< orphan*/ * ts_task; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct ucb1400_ts* FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct ucb1400_ts*,char*) ; 
 int /*<<< orphan*/  ucb1400_ts_thread ; 

__attribute__((used)) static int FUNC5(struct input_dev *idev)
{
	struct ucb1400_ts *ucb = FUNC3(idev);
	int ret = 0;

	FUNC0(ucb->ts_task);

	ucb->ts_task = FUNC4(ucb1400_ts_thread, ucb, "UCB1400_ts");
	if (FUNC1(ucb->ts_task)) {
		ret = FUNC2(ucb->ts_task);
		ucb->ts_task = NULL;
	}

	return ret;
}