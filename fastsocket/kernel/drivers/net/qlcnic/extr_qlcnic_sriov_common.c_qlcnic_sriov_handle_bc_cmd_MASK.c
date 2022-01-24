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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  wait_list; } ;
struct qlcnic_vf_info {TYPE_2__ rcv_pend; int /*<<< orphan*/  pci_func; struct qlcnic_adapter* adapter; int /*<<< orphan*/  state; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_cmd_args {scalar_t__ op_type; } ;
struct qlcnic_bc_trans {int curr_req_frag; int req_pay; int /*<<< orphan*/  list; TYPE_1__* req_hdr; int /*<<< orphan*/  trans_id; struct qlcnic_vf_info* vf; int /*<<< orphan*/  func_id; int /*<<< orphan*/  req_pay_size; } ;
struct qlcnic_bc_hdr {scalar_t__ op_type; scalar_t__ cmd_op; int frag_num; int /*<<< orphan*/  seq_id; } ;
struct qlcnic_adapter {scalar_t__ need_fw_reset; } ;
struct TYPE_3__ {scalar_t__ num_frags; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_BC_CMD_CHANNEL_INIT ; 
 scalar_t__ QLC_BC_CMD ; 
 int /*<<< orphan*/  QLC_BC_COMMAND ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC3 (struct qlcnic_sriov*,struct qlcnic_vf_info*,struct qlcnic_bc_trans*) ; 
 int FUNC4 (struct qlcnic_cmd_args*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct qlcnic_bc_trans**) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_bc_trans*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_sriov*,struct qlcnic_vf_info*,struct qlcnic_bc_hdr*) ; 
 scalar_t__ FUNC9 (struct qlcnic_bc_trans*,struct qlcnic_cmd_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct qlcnic_adapter*,struct qlcnic_bc_trans*,struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct qlcnic_sriov *sriov,
				       struct qlcnic_bc_hdr *hdr,
				       struct qlcnic_vf_info *vf)
{
	struct qlcnic_bc_trans *trans;
	struct qlcnic_adapter *adapter = vf->adapter;
	struct qlcnic_cmd_args cmd;
	u32 pay_size;
	int err;
	u8 cmd_op;

	if (adapter->need_fw_reset)
		return;

	if (!FUNC14(QLC_BC_VF_STATE, &vf->state) &&
	    hdr->op_type != QLC_BC_CMD &&
	    hdr->cmd_op != QLCNIC_BC_CMD_CHANNEL_INIT)
		return;

	if (hdr->frag_num > 1) {
		FUNC8(sriov, vf, hdr);
		return;
	}

	cmd_op = hdr->cmd_op;
	if (FUNC5(&trans))
		return;

	if (hdr->op_type == QLC_BC_CMD)
		err = FUNC4(&cmd, cmd_op);
	else
		err = FUNC1(&cmd, adapter, cmd_op);

	if (err) {
		FUNC6(trans);
		return;
	}

	cmd.op_type = hdr->op_type;
	if (FUNC9(trans, &cmd, hdr->seq_id,
					QLC_BC_COMMAND)) {
		FUNC2(&cmd);
		FUNC6(trans);
		return;
	}

	pay_size = FUNC7(trans->req_pay_size,
					 trans->curr_req_frag);
	FUNC10(vf->adapter,
				 (u32 *)(trans->req_hdr + trans->curr_req_frag),
				 (u32 *)(trans->req_pay + trans->curr_req_frag),
				 pay_size);
	trans->func_id = vf->pci_func;
	trans->vf = vf;
	trans->trans_id = hdr->seq_id;
	trans->curr_req_frag++;

	if (FUNC11(adapter, trans, vf))
		return;

	if (trans->curr_req_frag == trans->req_hdr->num_frags) {
		if (FUNC3(sriov, vf, trans)) {
			FUNC2(&cmd);
			FUNC6(trans);
		}
	} else {
		FUNC12(&vf->rcv_pend.lock);
		FUNC0(&trans->list, &vf->rcv_pend.wait_list);
		vf->rcv_pend.count++;
		FUNC13(&vf->rcv_pend.lock);
	}
}