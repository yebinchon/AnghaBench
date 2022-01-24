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
typedef  int /*<<< orphan*/  uint16_t ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {int /*<<< orphan*/  interface_handle; struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_cmd_set_vlan_req {int /*<<< orphan*/  vlan_priority; int /*<<< orphan*/  interface_hndl; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_NTWK_SET_VLAN ; 
 unsigned int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 struct be_cmd_set_vlan_req* FUNC4 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct beiscsi_hba*) ; 

int FUNC8(struct beiscsi_hba *phba,
		     uint16_t vlan_tag)
{
	unsigned int tag = 0;
	struct be_mcc_wrb *wrb;
	struct be_cmd_set_vlan_req *req;
	struct be_ctrl_info *ctrl = &phba->ctrl;

	FUNC5(&ctrl->mbox_lock);
	tag = FUNC0(phba);
	if (!tag) {
		FUNC6(&ctrl->mbox_lock);
		return tag;
	}

	wrb = FUNC7(phba);
	req = FUNC4(wrb);
	wrb->tag0 |= tag;
	FUNC3(wrb, sizeof(*wrb), true, 0);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI,
			   OPCODE_COMMON_ISCSI_NTWK_SET_VLAN,
			   sizeof(*req));

	req->interface_hndl = phba->interface_handle;
	req->vlan_priority = vlan_tag;

	FUNC2(phba);
	FUNC6(&ctrl->mbox_lock);

	return tag;
}