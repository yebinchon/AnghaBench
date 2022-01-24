#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int iscsi_cid_count; int /*<<< orphan*/  iscsi_cid_start; int /*<<< orphan*/  iscsi_icd_count; int /*<<< orphan*/  iscsi_icd_start; int /*<<< orphan*/  phys_port; } ;
struct beiscsi_hba {TYPE_2__ fw_config; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_fw_cfg {TYPE_1__* ulp; int /*<<< orphan*/  phys_port; int /*<<< orphan*/  hdr; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mbox_mem; } ;
struct TYPE_3__ {int sq_count; int /*<<< orphan*/  sq_base; int /*<<< orphan*/  icd_count; int /*<<< orphan*/  icd_base; } ;

/* Variables and functions */
 int BE2_MAX_SESSIONS ; 
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  OPCODE_COMMON_QUERY_FIRMWARE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct be_fw_cfg* FUNC4 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct be_ctrl_info *ctrl,
				struct beiscsi_hba *phba)
{
	struct be_mcc_wrb *wrb = FUNC8(&ctrl->mbox_mem);
	struct be_fw_cfg *req = FUNC4(wrb);
	int status = 0;

	FUNC6(&ctrl->mbox_lock);
	FUNC5(wrb, 0, sizeof(*wrb));

	FUNC2(wrb, sizeof(*req), true, 0);

	FUNC0(&req->hdr, CMD_SUBSYSTEM_COMMON,
			   OPCODE_COMMON_QUERY_FIRMWARE_CONFIG, sizeof(*req));
	status = FUNC1(ctrl);
	if (!status) {
		struct be_fw_cfg *pfw_cfg;
		pfw_cfg = req;
		phba->fw_config.phys_port = pfw_cfg->phys_port;
		phba->fw_config.iscsi_icd_start =
					pfw_cfg->ulp[0].icd_base;
		phba->fw_config.iscsi_icd_count =
					pfw_cfg->ulp[0].icd_count;
		phba->fw_config.iscsi_cid_start =
					pfw_cfg->ulp[0].sq_base;
		phba->fw_config.iscsi_cid_count =
					pfw_cfg->ulp[0].sq_count;
		if (phba->fw_config.iscsi_cid_count > (BE2_MAX_SESSIONS / 2)) {
			FUNC3(phba, KERN_INFO, BEISCSI_LOG_INIT,
				    "BG_%d : FW reported MAX CXNS as %d\t"
				    "Max Supported = %d.\n",
				    phba->fw_config.iscsi_cid_count,
				    BE2_MAX_SESSIONS);
			phba->fw_config.iscsi_cid_count = BE2_MAX_SESSIONS / 2;
		}
	} else {
		FUNC3(phba, KERN_WARNING, BEISCSI_LOG_INIT,
			    "BG_%d : Failed in mgmt_get_fw_config\n");
	}

	FUNC7(&ctrl->mbox_lock);
	return status;
}