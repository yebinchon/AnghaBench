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
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_cmd_get_boot_target_resp {int dummy; } ;
struct be_cmd_get_boot_target_req {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_MBOX ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI_INI ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OPCODE_ISCSI_INI_BOOT_GET_BOOT_TARGET ; 
 unsigned int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 struct be_cmd_get_boot_target_req* FUNC5 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (struct beiscsi_hba*) ; 

unsigned int FUNC9(struct beiscsi_hba *phba)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	struct be_cmd_get_boot_target_req *req;
	unsigned int tag = 0;

	FUNC4(phba, KERN_INFO,
		    BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
		    "BG_%d : In bescsi_get_boot_target\n");

	FUNC6(&ctrl->mbox_lock);
	tag = FUNC0(phba);
	if (!tag) {
		FUNC7(&ctrl->mbox_lock);
		return tag;
	}

	wrb = FUNC8(phba);
	req = FUNC5(wrb);
	wrb->tag0 |= tag;
	FUNC3(wrb, sizeof(*req), true, 0);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
			   OPCODE_ISCSI_INI_BOOT_GET_BOOT_TARGET,
			   sizeof(struct be_cmd_get_boot_target_resp));

	FUNC2(phba);
	FUNC7(&ctrl->mbox_lock);
	return tag;
}