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
struct adapter {int flags; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  fatal_error_handler_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_XGM_RX_CTRL ; 
 int /*<<< orphan*/  A_XGM_TX_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,...) ; 
 int FULL_INIT_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cxgb3_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct adapter *adapter)
{
	unsigned int fw_status[4];

	if (adapter->flags & FULL_INIT_DONE) {
		FUNC7(adapter);
		FUNC8(adapter, A_XGM_TX_CTRL, 0);
		FUNC8(adapter, A_XGM_RX_CTRL, 0);
		FUNC8(adapter, FUNC1(A_XGM_TX_CTRL, 1), 0);
		FUNC8(adapter, FUNC1(A_XGM_RX_CTRL, 1), 0);

		FUNC3(&adapter->work_lock);
		FUNC6(adapter);
		FUNC2(cxgb3_wq, &adapter->fatal_error_handler_task);
		FUNC4(&adapter->work_lock);
	}
	FUNC0(adapter, "encountered fatal error, operation suspended\n");
	if (!FUNC5(adapter, 0xa0, 4, fw_status))
		FUNC0(adapter, "FW status: 0x%x, 0x%x, 0x%x, 0x%x\n",
			 fw_status[0], fw_status[1],
			 fw_status[2], fw_status[3]);
}