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
struct bnx2x {int /*<<< orphan*/  sp_task; int /*<<< orphan*/  interrupt_occurred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  bnx2x_wq ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct bnx2x *bp)
{
	/* Set the interrupt occurred bit for the sp-task to recognize it
	 * must ack the interrupt and transition according to the IGU
	 * state machine.
	 */
	FUNC0(&bp->interrupt_occurred, 1);

	/* The sp_task must execute only after this bit
	 * is set, otherwise we will get out of sync and miss all
	 * further interrupts. Hence, the barrier.
	 */
	FUNC2();

	/* schedule sp_task to workqueue */
	return FUNC1(bnx2x_wq, &bp->sp_task, 0);
}