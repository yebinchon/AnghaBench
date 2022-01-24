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
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mbox_mem; } ;
struct beiscsi_hba {int /*<<< orphan*/  interface_handle; struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_get_all_if_id_req {int /*<<< orphan*/ * if_hndl_list; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_NTWK_GET_ALL_IF_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct be_cmd_get_all_if_id_req* FUNC4 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (int /*<<< orphan*/ *) ; 

unsigned int FUNC9(struct beiscsi_hba *phba)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb = FUNC8(&ctrl->mbox_mem);
	struct be_cmd_get_all_if_id_req *req = FUNC4(wrb);
	struct be_cmd_get_all_if_id_req *pbe_allid = req;
	int status = 0;

	FUNC5(wrb, 0, sizeof(*wrb));

	FUNC6(&ctrl->mbox_lock);

	FUNC2(wrb, sizeof(*req), true, 0);
	FUNC0(&req->hdr, CMD_SUBSYSTEM_ISCSI,
			   OPCODE_COMMON_ISCSI_NTWK_GET_ALL_IF_ID,
			   sizeof(*req));
	status = FUNC1(ctrl);
	if (!status)
		phba->interface_handle = pbe_allid->if_hndl_list[0];
	else {
		FUNC3(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
			    "BG_%d : Failed in mgmt_get_all_if_id\n");
	}
	FUNC7(&ctrl->mbox_lock);

	return status;
}