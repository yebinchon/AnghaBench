#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* dev; int /*<<< orphan*/  waitq; } ;
struct TYPE_7__ {TYPE_1__* port; } ;
struct TYPE_6__ {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LP_ABORT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  LP_TIMEOUT_POLLED ; 
 scalar_t__ PARPORT_IRQ_NONE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* lp_table ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC8 (int minor)
{
	FUNC0(wait);
	int polling;

	if (FUNC1(minor) & LP_ABORT)
		return;

	polling = lp_table[minor].dev->port->irq == PARPORT_IRQ_NONE;
	if (polling) FUNC4 (&lp_table[minor]);
	FUNC6(&lp_table[minor].waitq, &wait, TASK_INTERRUPTIBLE);
	FUNC7(LP_TIMEOUT_POLLED);
	FUNC2(&lp_table[minor].waitq, &wait);
	if (polling) FUNC3 (&lp_table[minor]);
	else FUNC5 (lp_table[minor].dev);
}