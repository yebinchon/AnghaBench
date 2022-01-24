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
struct qlcnic_host_tx_ring {int /*<<< orphan*/  ctx_id; } ;
struct TYPE_3__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_DESTROY_TX_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

void FUNC4(struct qlcnic_adapter *adapter,
				   struct qlcnic_host_tx_ring *tx_ring)
{
	struct qlcnic_cmd_args cmd;

	FUNC1(&cmd, adapter, QLCNIC_CMD_DESTROY_TX_CTX);

	cmd.req.arg[1] = tx_ring->ctx_id;
	if (FUNC3(adapter, &cmd))
		FUNC0(&adapter->pdev->dev,
			"Failed to destroy tx ctx in firmware\n");
	FUNC2(&cmd);
}