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
struct ucb1x00_ts {int /*<<< orphan*/  ucb; scalar_t__ rtask; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_IRQ_TSPX ; 
 int /*<<< orphan*/  UCB_TS_CR ; 
 struct ucb1x00_ts* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *idev)
{
	struct ucb1x00_ts *ts = FUNC0(idev);

	if (ts->rtask)
		FUNC1(ts->rtask);

	FUNC3(ts->ucb);
	FUNC4(ts->ucb, UCB_IRQ_TSPX, ts);
	FUNC5(ts->ucb, UCB_TS_CR, 0);
	FUNC2(ts->ucb);
}