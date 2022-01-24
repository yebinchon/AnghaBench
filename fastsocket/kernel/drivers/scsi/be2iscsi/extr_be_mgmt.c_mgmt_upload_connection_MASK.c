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
struct tcp_upload_params_in {unsigned short id; unsigned char upload_type; int /*<<< orphan*/  hdr; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {unsigned int tag0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_COMMON_TCP_UPLOAD ; 
 int /*<<< orphan*/  OPCODE_COMMON_TCP_UPLOAD ; 
 unsigned int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 struct tcp_upload_params_in* FUNC4 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct beiscsi_hba*) ; 

unsigned int FUNC8(struct beiscsi_hba *phba,
				unsigned short cid, unsigned int upload_flag)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	struct tcp_upload_params_in *req;
	unsigned int tag = 0;

	FUNC5(&ctrl->mbox_lock);
	tag = FUNC0(phba);
	if (!tag) {
		FUNC6(&ctrl->mbox_lock);
		return tag;
	}
	wrb = FUNC7(phba);
	req = FUNC4(wrb);
	wrb->tag0 |= tag;

	FUNC3(wrb, sizeof(*req), true, 0);
	FUNC1(&req->hdr, CMD_COMMON_TCP_UPLOAD,
			   OPCODE_COMMON_TCP_UPLOAD, sizeof(*req));
	req->id = (unsigned short)cid;
	req->upload_type = (unsigned char)upload_flag;
	FUNC2(phba);
	FUNC6(&ctrl->mbox_lock);
	return tag;
}