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
struct invalidate_commands_params_in {int /*<<< orphan*/  icd_count; TYPE_1__* table; int /*<<< orphan*/  cleanup_type; scalar_t__ ref_handle; int /*<<< orphan*/  hdr; } ;
struct invalidate_command_table {int /*<<< orphan*/  cid; int /*<<< orphan*/  icd; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_dma_mem {int dma; int size; struct invalidate_commands_params_in* va; } ;
struct TYPE_2__ {int /*<<< orphan*/  cid; int /*<<< orphan*/  icd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ISCSI_COMMAND_INVALIDATE ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS ; 
 unsigned int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct invalidate_commands_params_in*,int /*<<< orphan*/ ,int) ; 
 struct be_sge* FUNC6 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 
 struct be_mcc_wrb* FUNC10 (struct beiscsi_hba*) ; 

unsigned int  FUNC11(struct beiscsi_hba *phba,
				struct invalidate_command_table *inv_tbl,
				unsigned int num_invalidate, unsigned int cid,
				struct be_dma_mem *nonemb_cmd)

{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	struct be_sge *sge;
	struct invalidate_commands_params_in *req;
	unsigned int i, tag = 0;

	FUNC7(&ctrl->mbox_lock);
	tag = FUNC0(phba);
	if (!tag) {
		FUNC8(&ctrl->mbox_lock);
		return tag;
	}

	req = nonemb_cmd->va;
	FUNC5(req, 0, sizeof(*req));
	wrb = FUNC10(phba);
	sge = FUNC6(wrb);
	wrb->tag0 |= tag;

	FUNC3(wrb, sizeof(*req), false, 1);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI,
			OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS,
			sizeof(*req));
	req->ref_handle = 0;
	req->cleanup_type = CMD_ISCSI_COMMAND_INVALIDATE;
	for (i = 0; i < num_invalidate; i++) {
		req->table[i].icd = inv_tbl->icd;
		req->table[i].cid = inv_tbl->cid;
		req->icd_count++;
		inv_tbl++;
	}
	sge->pa_hi = FUNC4(FUNC9(nonemb_cmd->dma));
	sge->pa_lo = FUNC4(nonemb_cmd->dma & 0xFFFFFFFF);
	sge->len = FUNC4(nonemb_cmd->size);

	FUNC2(phba);
	FUNC8(&ctrl->mbox_lock);
	return tag;
}