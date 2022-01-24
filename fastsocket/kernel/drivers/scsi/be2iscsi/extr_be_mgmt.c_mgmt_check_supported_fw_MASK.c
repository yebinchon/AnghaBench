#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  iscsi_features; } ;
struct beiscsi_hba {int /*<<< orphan*/  fw_ver_str; TYPE_1__ fw_config; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct TYPE_5__ {int /*<<< orphan*/  firmware_version_string; int /*<<< orphan*/  iscsi_features; int /*<<< orphan*/  flashrom_version_string; } ;
struct TYPE_6__ {TYPE_2__ hba_attribs; } ;
struct be_mgmt_controller_attributes_resp {TYPE_3__ params; int /*<<< orphan*/  hdr; } ;
struct be_mgmt_controller_attributes {TYPE_3__ params; int /*<<< orphan*/  hdr; } ;
struct be_mcc_wrb {TYPE_3__ params; int /*<<< orphan*/  hdr; } ;
struct be_dma_mem {int dma; int size; struct be_mgmt_controller_attributes_resp* va; } ;
struct be_ctrl_info {int /*<<< orphan*/  pdev; int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mbox_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  BEISCSI_VER_STRLEN ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_CNTL_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mgmt_controller_attributes_resp*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct be_mgmt_controller_attributes_resp*,int /*<<< orphan*/ ,int) ; 
 struct be_sge* FUNC7 (struct be_mgmt_controller_attributes_resp*) ; 
 struct be_mgmt_controller_attributes_resp* FUNC8 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,struct be_mgmt_controller_attributes_resp*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int) ; 
 struct be_mgmt_controller_attributes_resp* FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct be_ctrl_info *ctrl,
				      struct beiscsi_hba *phba)
{
	struct be_dma_mem nonemb_cmd;
	struct be_mcc_wrb *wrb = FUNC13(&ctrl->mbox_mem);
	struct be_mgmt_controller_attributes *req;
	struct be_sge *sge = FUNC7(wrb);
	int status = 0;

	nonemb_cmd.va = FUNC8(ctrl->pdev,
				sizeof(struct be_mgmt_controller_attributes),
				&nonemb_cmd.dma);
	if (nonemb_cmd.va == NULL) {
		FUNC3(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BG_%d : Failed to allocate memory for "
			    "mgmt_check_supported_fw\n");
		return -ENOMEM;
	}
	nonemb_cmd.size = sizeof(struct be_mgmt_controller_attributes);
	req = nonemb_cmd.va;
	FUNC6(req, 0, sizeof(*req));
	FUNC10(&ctrl->mbox_lock);
	FUNC6(wrb, 0, sizeof(*wrb));
	FUNC2(wrb, sizeof(*req), false, 1);
	FUNC0(&req->hdr, CMD_SUBSYSTEM_COMMON,
			   OPCODE_COMMON_GET_CNTL_ATTRIBUTES, sizeof(*req));
	sge->pa_hi = FUNC4(FUNC12(nonemb_cmd.dma));
	sge->pa_lo = FUNC4(nonemb_cmd.dma & 0xFFFFFFFF);
	sge->len = FUNC4(nonemb_cmd.size);
	status = FUNC1(ctrl);
	if (!status) {
		struct be_mgmt_controller_attributes_resp *resp = nonemb_cmd.va;
		FUNC3(phba, KERN_INFO, BEISCSI_LOG_INIT,
			    "BG_%d : Firmware Version of CMD : %s\n"
			    "Firmware Version is : %s\n"
			    "Developer Build, not performing version check...\n",
			    resp->params.hba_attribs
			    .flashrom_version_string,
			    resp->params.hba_attribs.
			    firmware_version_string);

		phba->fw_config.iscsi_features =
				resp->params.hba_attribs.iscsi_features;
		FUNC3(phba, KERN_INFO, BEISCSI_LOG_INIT,
			    "BM_%d : phba->fw_config.iscsi_features = %d\n",
			    phba->fw_config.iscsi_features);
		FUNC5(phba->fw_ver_str, resp->params.hba_attribs.
		       firmware_version_string, BEISCSI_VER_STRLEN);
	} else
		FUNC3(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BG_%d :  Failed in mgmt_check_supported_fw\n");
	FUNC11(&ctrl->mbox_lock);
	if (nonemb_cmd.va)
		FUNC9(ctrl->pdev, nonemb_cmd.size,
				    nonemb_cmd.va, nonemb_cmd.dma);

	return status;
}