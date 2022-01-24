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
struct qlcnic_vf_info {int tx_ctx_id; int /*<<< orphan*/  pci_func; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_DESTROY_TX_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qlcnic_adapter *adapter,
				    struct qlcnic_vf_info *vf)
{
	struct qlcnic_cmd_args cmd;
	int vpid;

	if (!vf->tx_ctx_id)
		return;

	if (FUNC1(&cmd, adapter, QLCNIC_CMD_DESTROY_TX_CTX))
		return;

	vpid = FUNC4(adapter, vf->pci_func);
	if (vpid >= 0) {
		cmd.req.arg[1] |= vf->tx_ctx_id | (vpid & 0xffff) << 16;
		if (FUNC3(adapter, &cmd))
			FUNC0(&adapter->pdev->dev,
				"Failed to delete Tx ctx in firmware for func 0x%x\n",
				vf->pci_func);
		else
			vf->tx_ctx_id = 0;
	}

	FUNC2(&cmd);
}