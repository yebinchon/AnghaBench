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
struct ucb1400_ts {int /*<<< orphan*/  ac97; scalar_t__ ts_task; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_TS_CR ; 
 struct ucb1400_ts* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct input_dev *idev)
{
	struct ucb1400_ts *ucb = FUNC0(idev);

	if (ucb->ts_task)
		FUNC1(ucb->ts_task);

	FUNC3(ucb->ac97);
	FUNC2(ucb->ac97, UCB_TS_CR, 0);
}