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
struct tsc2007 {int /*<<< orphan*/  (* clear_penirq ) () ;int /*<<< orphan*/  work; int /*<<< orphan*/  irq; int /*<<< orphan*/  (* get_pendown_state ) () ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TS_POLL_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *handle)
{
	struct tsc2007 *ts = handle;

	if (!ts->get_pendown_state || FUNC1(ts->get_pendown_state())) {
		FUNC0(ts->irq);
		FUNC3(&ts->work,
				      FUNC2(TS_POLL_DELAY));
	}

	if (ts->clear_penirq)
		ts->clear_penirq();

	return IRQ_HANDLED;
}