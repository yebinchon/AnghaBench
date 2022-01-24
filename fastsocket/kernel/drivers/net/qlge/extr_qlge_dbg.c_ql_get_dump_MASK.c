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
struct ql_adapter {int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_FRC_COREDUMP ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct ql_adapter *qdev, void *buff)
{
	/*
	 * If the dump has already been taken and is stored
	 * in our internal buffer and if force dump is set then
	 * just start the spool to dump it to the log file
	 * and also, take a snapshot of the general regs to
	 * to the user's buffer or else take complete dump
	 * to the user's buffer if force is not set.
	 */

	if (!FUNC5(QL_FRC_COREDUMP, &qdev->flags)) {
		if(!FUNC1(qdev, buff))
			FUNC4(qdev);
		else
			FUNC0(qdev, drv, qdev->ndev,"coredump failed!\n");
	} else {
		FUNC2(qdev, buff);
		FUNC3(qdev);
	}
}