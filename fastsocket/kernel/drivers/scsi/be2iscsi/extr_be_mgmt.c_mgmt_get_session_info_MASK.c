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
typedef  int /*<<< orphan*/  u32 ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_dma_mem {int size; int dma; struct be_cmd_get_session_req* va; } ;
struct be_cmd_get_session_resp {int dummy; } ;
struct be_cmd_get_session_req {int /*<<< orphan*/  session_handle; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_MBOX ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI_INI ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OPCODE_ISCSI_INI_SESSION_GET_A_SESSION ; 
 unsigned int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct be_cmd_get_session_req*,int /*<<< orphan*/ ,int) ; 
 struct be_sge* FUNC7 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 
 struct be_mcc_wrb* FUNC11 (struct beiscsi_hba*) ; 

unsigned int FUNC12(struct beiscsi_hba *phba,
				   u32 boot_session_handle,
				   struct be_dma_mem *nonemb_cmd)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	unsigned int tag = 0;
	struct  be_cmd_get_session_req *req;
	struct be_cmd_get_session_resp *resp;
	struct be_sge *sge;

	FUNC4(phba, KERN_INFO,
		    BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
		    "BG_%d : In beiscsi_get_session_info\n");

	FUNC8(&ctrl->mbox_lock);
	tag = FUNC0(phba);
	if (!tag) {
		FUNC9(&ctrl->mbox_lock);
		return tag;
	}

	nonemb_cmd->size = sizeof(*resp);
	req = nonemb_cmd->va;
	FUNC6(req, 0, sizeof(*req));
	wrb = FUNC11(phba);
	sge = FUNC7(wrb);
	wrb->tag0 |= tag;


	wrb->tag0 |= tag;
	FUNC3(wrb, sizeof(*req), false, 1);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
			   OPCODE_ISCSI_INI_SESSION_GET_A_SESSION,
			   sizeof(*resp));
	req->session_handle = boot_session_handle;
	sge->pa_hi = FUNC5(FUNC10(nonemb_cmd->dma));
	sge->pa_lo = FUNC5(nonemb_cmd->dma & 0xFFFFFFFF);
	sge->len = FUNC5(nonemb_cmd->size);

	FUNC2(phba);
	FUNC9(&ctrl->mbox_lock);
	return tag;
}