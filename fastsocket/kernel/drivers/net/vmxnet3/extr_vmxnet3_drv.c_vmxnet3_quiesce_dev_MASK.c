#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmxnet3_adapter {int num_rx_queues; int /*<<< orphan*/  netdev; scalar_t__ link_speed; TYPE_1__* rx_queue; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_CMD_QUIESCE_DEV ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int /*<<< orphan*/  VMXNET3_STATE_BIT_QUIESCED ; 
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmxnet3_adapter*) ; 

int
FUNC11(struct vmxnet3_adapter *adapter)
{
	int i;
	unsigned long flags;
	if (FUNC6(VMXNET3_STATE_BIT_QUIESCED, &adapter->state))
		return 0;


	FUNC4(&adapter->cmd_lock, flags);
	FUNC0(adapter, VMXNET3_REG_CMD,
			       VMXNET3_CMD_QUIESCE_DEV);
	FUNC5(&adapter->cmd_lock, flags);
	FUNC7(adapter);

	for (i = 0; i < adapter->num_rx_queues; i++)
		FUNC1(&adapter->rx_queue[i].napi);
	FUNC3(adapter->netdev);
	adapter->link_speed = 0;
	FUNC2(adapter->netdev);

	FUNC10(adapter);
	FUNC9(adapter);
	FUNC8(adapter);
	return 0;
}