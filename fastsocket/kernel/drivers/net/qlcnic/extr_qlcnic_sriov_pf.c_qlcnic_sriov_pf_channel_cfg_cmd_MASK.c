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
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_vf_info {int /*<<< orphan*/  state; int /*<<< orphan*/  pci_func; struct qlcnic_adapter* adapter; } ;
struct TYPE_4__ {scalar_t__* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_bc_trans {TYPE_1__* req_hdr; struct qlcnic_vf_info* vf; } ;
struct qlcnic_adapter {int dummy; } ;
struct TYPE_3__ {scalar_t__ cmd_op; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_BC_CMD_CHANNEL_INIT ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct qlcnic_adapter*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_bc_trans *trans,
					   struct qlcnic_cmd_args *cmd)
{
	struct qlcnic_vf_info *vf = trans->vf;
	struct qlcnic_adapter *adapter = vf->adapter;
	int err;
	u16 func = vf->pci_func;

	cmd->rsp.arg[0] = trans->req_hdr->cmd_op;
	cmd->rsp.arg[0] |= (1 << 16);

	if (trans->req_hdr->cmd_op == QLCNIC_BC_CMD_CHANNEL_INIT) {
		err = FUNC1(adapter, 1, func);
		if (!err) {
			err = FUNC2(adapter, func);
			if (err)
				FUNC1(adapter, 0, func);
		}
	} else {
		err = FUNC1(adapter, 0, func);
	}

	if (err)
		goto err_out;

	cmd->rsp.arg[0] |= (1 << 25);

	if (trans->req_hdr->cmd_op == QLCNIC_BC_CMD_CHANNEL_INIT)
		FUNC3(QLC_BC_VF_STATE, &vf->state);
	else
		FUNC0(QLC_BC_VF_STATE, &vf->state);

	return err;

err_out:
	cmd->rsp.arg[0] |= (2 << 25);
	return err;
}