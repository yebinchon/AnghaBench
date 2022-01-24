#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_3__* netdev; TYPE_4__* pdev; int /*<<< orphan*/  vf_mc_list; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  delay; } ;
struct TYPE_6__ {TYPE_1__ idc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QLCNIC_BC_CMD_CHANNEL_INIT ; 
 int /*<<< orphan*/  QLCNIC_BC_CMD_CHANNEL_TERM ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct qlcnic_adapter*,int) ; 
 int FUNC10 (struct qlcnic_adapter*,TYPE_3__*,int) ; 
 int FUNC11 (struct qlcnic_adapter*,int) ; 
 int FUNC12 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct qlcnic_adapter*,int) ; 
 int FUNC14 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_sriov_vf_poll_dev_state ; 
 int /*<<< orphan*/  FUNC15 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_use_msi ; 
 int /*<<< orphan*/  qlcnic_use_msi_x ; 

__attribute__((used)) static int FUNC16(struct qlcnic_adapter *adapter,
				 int pci_using_dac)
{
	int err;

	FUNC0(&adapter->vf_mc_list);
	if (!qlcnic_use_msi_x && !!qlcnic_use_msi)
		FUNC4(&adapter->pdev->dev,
			 "83xx adapter do not support MSI interrupts\n");

	err = FUNC9(adapter, 1);
	if (err) {
		FUNC2(&adapter->pdev->dev, "Failed to setup interrupt\n");
		goto err_out_disable_msi;
	}

	err = FUNC7(adapter);
	if (err)
		goto err_out_disable_msi;

	err = FUNC13(adapter, 1);
	if (err)
		goto err_out_disable_mbx_intr;

	err = FUNC11(adapter, 1);
	if (err)
		goto err_out_cleanup_sriov;

	err = FUNC12(adapter, QLCNIC_BC_CMD_CHANNEL_INIT);
	if (err)
		goto err_out_disable_bc_intr;

	err = FUNC14(adapter);
	if (err)
		goto err_out_send_channel_term;

	err = FUNC10(adapter, adapter->netdev, pci_using_dac);
	if (err)
		goto err_out_send_channel_term;

	FUNC5(adapter->pdev, adapter);
	FUNC3(&adapter->pdev->dev, "%s: XGbE port initialized\n",
		 adapter->netdev->name);
	FUNC8(adapter, qlcnic_sriov_vf_poll_dev_state,
			     adapter->ahw->idc.delay);
	return 0;

err_out_send_channel_term:
	FUNC12(adapter, QLCNIC_BC_CMD_CHANNEL_TERM);

err_out_disable_bc_intr:
	FUNC11(adapter, 0);

err_out_cleanup_sriov:
	FUNC1(adapter);

err_out_disable_mbx_intr:
	FUNC6(adapter);

err_out_disable_msi:
	FUNC15(adapter);
	return err;
}