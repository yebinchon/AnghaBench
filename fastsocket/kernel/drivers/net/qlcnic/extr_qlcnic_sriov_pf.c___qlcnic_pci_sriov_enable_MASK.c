#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_adapter {TYPE_1__* ahw; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  op_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_MGMT_FUNC ; 
 int /*<<< orphan*/  QLCNIC_SRIOV_PF_FUNC ; 
 int /*<<< orphan*/  __QLCNIC_SRIOV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct qlcnic_adapter*,int) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 int FUNC5 (struct qlcnic_adapter*,int) ; 
 int FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct qlcnic_adapter *adapter,
				     int num_vfs)
{
	int err = 0;

	FUNC7(__QLCNIC_SRIOV_ENABLE, &adapter->state);
	adapter->ahw->op_mode = QLCNIC_SRIOV_PF_FUNC;

	err = FUNC2(adapter, num_vfs);
	if (err)
		goto clear_op_mode;

	err = FUNC3(adapter);
	if (err)
		goto sriov_cleanup;

	err = FUNC6(adapter);
	if (err)
		goto del_flr_queue;

	err = FUNC5(adapter, num_vfs);
	return err;

del_flr_queue:
	FUNC4(adapter);

sriov_cleanup:
	FUNC0(adapter);

clear_op_mode:
	FUNC1(__QLCNIC_SRIOV_ENABLE, &adapter->state);
	adapter->ahw->op_mode = QLCNIC_MGMT_FUNC;
	return err;
}