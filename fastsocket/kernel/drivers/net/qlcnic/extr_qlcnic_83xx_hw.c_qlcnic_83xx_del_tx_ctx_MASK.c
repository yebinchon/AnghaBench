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
typedef  int u32 ;
struct qlcnic_host_tx_ring {int ctx_id; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_DESTROY_TX_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 

void FUNC7(struct qlcnic_adapter *adapter,
			    struct qlcnic_host_tx_ring *tx_ring)
{
	struct qlcnic_cmd_args cmd;
	u32 temp = 0;

	if (FUNC1(&cmd, adapter, QLCNIC_CMD_DESTROY_TX_CTX))
		return;

	if (FUNC5(adapter) || FUNC6(adapter))
		cmd.req.arg[0] |= (0x3 << 29);

	if (FUNC5(adapter))
		FUNC4(adapter, &temp);

	cmd.req.arg[1] = tx_ring->ctx_id | temp;
	if (FUNC3(adapter, &cmd))
		FUNC0(&adapter->pdev->dev,
			"Failed to destroy tx ctx in firmware\n");
	FUNC2(&cmd);
}