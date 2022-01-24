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
struct blk_iopoll {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOPOLL_F_DISABLE ; 
 int /*<<< orphan*/  IOPOLL_F_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct blk_iopoll *iop)
{
	FUNC2(IOPOLL_F_DISABLE, &iop->state);
	while (FUNC3(IOPOLL_F_SCHED, &iop->state))
		FUNC1(1);
	FUNC0(IOPOLL_F_DISABLE, &iop->state);
}