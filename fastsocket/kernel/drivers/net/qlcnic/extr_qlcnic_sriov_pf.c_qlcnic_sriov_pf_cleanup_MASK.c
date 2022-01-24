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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_adapter {int /*<<< orphan*/  state; TYPE_1__* ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  op_mode; int /*<<< orphan*/  pci_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_MGMT_FUNC ; 
 int /*<<< orphan*/  __QLCNIC_SRIOV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 

void FUNC8(struct qlcnic_adapter *adapter)
{
	u8 func = adapter->ahw->pci_func;

	if (!FUNC3(adapter))
		return;

	FUNC7(adapter);
	FUNC2(adapter, 0);
	FUNC6(adapter, 0, func);
	FUNC4(adapter, func, 0);
	FUNC5(adapter, 0);
	FUNC0(adapter);
	adapter->ahw->op_mode = QLCNIC_MGMT_FUNC;
	FUNC1(__QLCNIC_SRIOV_ENABLE, &adapter->state);
}