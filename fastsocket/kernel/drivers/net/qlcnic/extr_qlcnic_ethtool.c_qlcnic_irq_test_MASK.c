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
struct qlcnic_hardware_context {scalar_t__ diag_cnt; int /*<<< orphan*/  pci_func; } ;
struct TYPE_2__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int max_sds_rings; int /*<<< orphan*/  state; struct qlcnic_hardware_context* ahw; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_CMD_INTRPT_TEST ; 
 int /*<<< orphan*/  QLCNIC_INTERRUPT_TEST ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_cmd_args*) ; 
 int FUNC8 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int ret, max_sds_rings = adapter->max_sds_rings;
	struct qlcnic_cmd_args cmd;

	if (FUNC2(adapter))
		return FUNC3(netdev);

	if (FUNC9(__QLCNIC_RESETTING, &adapter->state))
		return -EIO;

	ret = FUNC5(netdev, QLCNIC_INTERRUPT_TEST);
	if (ret)
		goto clear_diag_irq;

	ahw->diag_cnt = 0;
	FUNC4(&cmd, adapter, QLCNIC_CMD_INTRPT_TEST);
	cmd.req.arg[1] = adapter->ahw->pci_func;

	ret = FUNC8(adapter, &cmd);
	if (ret)
		goto done;

	FUNC10(1000, 12000);
	ret = !ahw->diag_cnt;

done:
	FUNC7(&cmd);
	FUNC6(netdev, max_sds_rings);

clear_diag_irq:
	adapter->max_sds_rings = max_sds_rings;
	FUNC0(__QLCNIC_RESETTING, &adapter->state);
	return ret;
}