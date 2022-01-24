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
struct vmxnet3_adapter {int num_tx_queues; TYPE_1__* tx_queue; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_DEF_RX_RING_SIZE ; 
 int /*<<< orphan*/  VMXNET3_DEF_TX_RING_SIZE ; 
 struct vmxnet3_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vmxnet3_adapter*) ; 
 int FUNC3 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev)
{
	struct vmxnet3_adapter *adapter;
	int err, i;

	adapter = FUNC0(netdev);

	for (i = 0; i < adapter->num_tx_queues; i++)
		FUNC1(&adapter->tx_queue[i].tx_lock);

	err = FUNC3(adapter, VMXNET3_DEF_TX_RING_SIZE,
				    VMXNET3_DEF_RX_RING_SIZE,
				    VMXNET3_DEF_RX_RING_SIZE);
	if (err)
		goto queue_err;

	err = FUNC2(adapter);
	if (err)
		goto activate_err;

	return 0;

activate_err:
	FUNC4(adapter);
	FUNC5(adapter);
queue_err:
	return err;
}