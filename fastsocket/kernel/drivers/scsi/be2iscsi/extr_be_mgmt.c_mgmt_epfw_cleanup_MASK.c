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
struct iscsi_cleanup_req {unsigned short chute; void* data_ring_id; void* hdr_ring_id; int /*<<< orphan*/  hdr; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct iscsi_cleanup_req* FUNC7 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC8 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC11 (struct beiscsi_hba*) ; 

int FUNC12(struct beiscsi_hba *phba, unsigned short chute)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb = FUNC11(phba);
	struct iscsi_cleanup_req *req = FUNC7(wrb);
	int status = 0;

	FUNC9(&ctrl->mbox_lock);
	FUNC8(wrb, 0, sizeof(*wrb));

	FUNC4(wrb, sizeof(*req), true, 0);
	FUNC2(&req->hdr, CMD_SUBSYSTEM_ISCSI,
			   OPCODE_COMMON_ISCSI_CLEANUP, sizeof(*req));

	req->chute = chute;
	req->hdr_ring_id = FUNC6(FUNC1(phba));
	req->data_ring_id = FUNC6(FUNC0(phba));

	status =  FUNC3(phba);
	if (status)
		FUNC5(phba, KERN_WARNING, BEISCSI_LOG_INIT,
			    "BG_%d : mgmt_epfw_cleanup , FAILED\n");
	FUNC10(&ctrl->mbox_lock);
	return status;
}