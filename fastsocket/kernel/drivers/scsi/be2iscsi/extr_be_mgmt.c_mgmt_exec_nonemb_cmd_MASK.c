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
struct be_ctrl_info {int /*<<< orphan*/  pdev; int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_dma_mem {int /*<<< orphan*/  dma; int /*<<< orphan*/  va; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_MBOX ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 unsigned int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC4 (struct beiscsi_hba*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 struct be_sge* FUNC9 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct be_mcc_wrb* FUNC14 (struct beiscsi_hba*) ; 

__attribute__((used)) static int FUNC15(struct beiscsi_hba *phba,
				struct be_dma_mem *nonemb_cmd, void *resp_buf,
				int resp_buf_len)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb = FUNC14(phba);
	struct be_sge *sge;
	unsigned int tag;
	int rc = 0;

	FUNC11(&ctrl->mbox_lock);
	tag = FUNC0(phba);
	if (!tag) {
		FUNC12(&ctrl->mbox_lock);
		rc = -ENOMEM;
		goto free_cmd;
	}
	FUNC8(wrb, 0, sizeof(*wrb));
	wrb->tag0 |= tag;
	sge = FUNC9(wrb);

	FUNC2(wrb, nonemb_cmd->size, false, 1);
	sge->pa_hi = FUNC5(FUNC13(nonemb_cmd->dma));
	sge->pa_lo = FUNC5(FUNC6(nonemb_cmd->dma));
	sge->len = FUNC5(nonemb_cmd->size);

	FUNC1(phba);
	FUNC12(&ctrl->mbox_lock);

	rc = FUNC4(phba, tag, NULL, nonemb_cmd->va);
	if (rc) {
		FUNC3(phba, KERN_ERR,
			    BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
			    "BG_%d : mgmt_exec_nonemb_cmd Failed status\n");

		rc = -EIO;
		goto free_cmd;
	}

	if (resp_buf)
		FUNC7(resp_buf, nonemb_cmd->va, resp_buf_len);

free_cmd:
	FUNC10(ctrl->pdev, nonemb_cmd->size,
			    nonemb_cmd->va, nonemb_cmd->dma);
	return rc;
}