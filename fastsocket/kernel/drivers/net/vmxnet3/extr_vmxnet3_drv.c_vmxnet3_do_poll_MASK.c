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
struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; int /*<<< orphan*/ * rx_queue; int /*<<< orphan*/ * tx_queue; TYPE_1__* shared; } ;
struct TYPE_2__ {int /*<<< orphan*/  ecr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_adapter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct vmxnet3_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC4(struct vmxnet3_adapter *adapter, int budget)
{
	int rcd_done = 0, i;
	if (FUNC0(adapter->shared->ecr))
		FUNC1(adapter);
	for (i = 0; i < adapter->num_tx_queues; i++)
		FUNC3(&adapter->tx_queue[i], adapter);

	for (i = 0; i < adapter->num_rx_queues; i++)
		rcd_done += FUNC2(&adapter->rx_queue[i],
						   adapter, budget);
	return rcd_done;
}