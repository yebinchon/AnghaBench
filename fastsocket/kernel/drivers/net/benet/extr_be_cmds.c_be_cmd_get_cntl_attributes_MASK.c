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
struct TYPE_4__ {int /*<<< orphan*/  phy_port; } ;
struct mgmt_controller_attrib {TYPE_1__ hba_attribs; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_req_cntl_attribs* va; } ;
struct be_cmd_resp_hdr {int dummy; } ;
struct be_cmd_resp_cntl_attribs {int dummy; } ;
struct be_cmd_req_cntl_attribs {int /*<<< orphan*/  hdr; } ;
struct be_adapter {TYPE_2__* pdev; int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  hba_port_num; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_CNTL_ATTRIBUTES ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_cmd_req_cntl_attribs* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,struct be_cmd_req_cntl_attribs*,int /*<<< orphan*/ ) ; 
 struct be_mcc_wrb* FUNC9 (struct be_adapter*) ; 

int FUNC10(struct be_adapter *adapter)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_cntl_attribs *req;
	struct be_cmd_resp_cntl_attribs *resp;
	int status;
	int payload_len = FUNC3(sizeof(*req), sizeof(*resp));
	struct mgmt_controller_attrib *attribs;
	struct be_dma_mem attribs_cmd;

	if (FUNC5(&adapter->mbox_lock))
		return -1;

	FUNC4(&attribs_cmd, 0, sizeof(struct be_dma_mem));
	attribs_cmd.size = sizeof(struct be_cmd_resp_cntl_attribs);
	attribs_cmd.va = FUNC7(adapter->pdev, attribs_cmd.size,
						&attribs_cmd.dma);
	if (!attribs_cmd.va) {
		FUNC2(&adapter->pdev->dev,
				"Memory allocation failure\n");
		status = -ENOMEM;
		goto err;
	}

	wrb = FUNC9(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = attribs_cmd.va;

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			 OPCODE_COMMON_GET_CNTL_ATTRIBUTES, payload_len, wrb,
			&attribs_cmd);

	status = FUNC0(adapter);
	if (!status) {
		attribs = (struct mgmt_controller_attrib *)( attribs_cmd.va +
					sizeof(struct be_cmd_resp_hdr));
		adapter->hba_port_num = attribs->hba_attribs.phy_port;
	}

err:
	FUNC6(&adapter->mbox_lock);
	if (attribs_cmd.va)
		FUNC8(adapter->pdev, attribs_cmd.size,
				    attribs_cmd.va, attribs_cmd.dma);
	return status;
}