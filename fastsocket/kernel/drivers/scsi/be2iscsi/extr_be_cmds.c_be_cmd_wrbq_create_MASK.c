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
struct be_wrbq_create_resp {int /*<<< orphan*/  cid; } ;
struct be_wrbq_create_req {int /*<<< orphan*/  pages; int /*<<< orphan*/  num_pages; int /*<<< orphan*/  hdr; } ;
struct be_queue_info {int created; int /*<<< orphan*/  id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int /*<<< orphan*/  size; int /*<<< orphan*/  va; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mbox_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_WRBQ_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_dma_mem*) ; 
 int FUNC4 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct be_ctrl_info *ctrl, struct be_dma_mem *q_mem,
		       struct be_queue_info *wrbq)
{
	struct be_mcc_wrb *wrb = FUNC11(&ctrl->mbox_mem);
	struct be_wrbq_create_req *req = FUNC6(wrb);
	struct be_wrbq_create_resp *resp = FUNC6(wrb);
	int status;

	FUNC9(&ctrl->mbox_lock);
	FUNC8(wrb, 0, sizeof(*wrb));

	FUNC5(wrb, sizeof(*req), true, 0);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_ISCSI,
		OPCODE_COMMON_ISCSI_WRBQ_CREATE, sizeof(*req));
	req->num_pages = FUNC1(q_mem->va, q_mem->size);
	FUNC3(req->pages, FUNC0(req->pages), q_mem);

	status = FUNC4(ctrl);
	if (!status) {
		wrbq->id = FUNC7(resp->cid);
		wrbq->created = true;
	}
	FUNC10(&ctrl->mbox_lock);
	return status;
}