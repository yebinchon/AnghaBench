#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct be_resources {int /*<<< orphan*/  max_vfs; } ;
struct be_queue_info {int /*<<< orphan*/  created; } ;
struct be_pcie_res_desc {int /*<<< orphan*/  num_vfs; } ;
struct be_nic_res_desc {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_resp_get_profile_config* va; } ;
struct be_cmd_resp_get_profile_config {int /*<<< orphan*/  func_param; int /*<<< orphan*/  desc_count; } ;
struct TYPE_4__ {struct be_queue_info q; } ;
struct be_adapter {TYPE_2__* pdev; TYPE_1__ mcc_obj; } ;
struct TYPE_5__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,struct be_dma_mem*) ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_resources*,struct be_nic_res_desc*) ; 
 struct be_nic_res_desc* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct be_pcie_res_desc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 struct be_cmd_resp_get_profile_config* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,struct be_cmd_resp_get_profile_config*,int /*<<< orphan*/ ) ; 

int FUNC10(struct be_adapter *adapter,
			      struct be_resources *res, u8 domain)
{
	struct be_cmd_resp_get_profile_config *resp;
	struct be_pcie_res_desc *pcie;
	struct be_nic_res_desc *nic;
	struct be_queue_info *mccq = &adapter->mcc_obj.q;
	struct be_dma_mem cmd;
	u32 desc_count;
	int status;

	FUNC7(&cmd, 0, sizeof(struct be_dma_mem));
	cmd.size = sizeof(struct be_cmd_resp_get_profile_config);
	cmd.va = FUNC8(adapter->pdev, cmd.size, &cmd.dma);
	if (!cmd.va)
		return -ENOMEM;

	if (!mccq->created)
		status = FUNC0(adapter, domain, &cmd);
	else
		status = FUNC1(adapter, domain, &cmd);
	if (status)
		goto err;

	resp = cmd.va;
	desc_count = FUNC6(resp->desc_count);

	pcie =  FUNC4(adapter->pdev->devfn, resp->func_param,
				 desc_count);
	if (pcie)
		res->max_vfs = FUNC5(pcie->num_vfs);

	nic = FUNC3(resp->func_param, desc_count);
	if (nic)
		FUNC2(res, nic);

err:
	if (cmd.va)
		FUNC9(adapter->pdev, cmd.size, cmd.va, cmd.dma);
	return status;
}