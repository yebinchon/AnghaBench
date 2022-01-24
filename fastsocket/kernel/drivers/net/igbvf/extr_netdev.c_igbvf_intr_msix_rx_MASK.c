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
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;
struct igbvf_adapter {TYPE_2__* rx_ring; scalar_t__ total_rx_packets; scalar_t__ total_rx_bytes; TYPE_1__ hw; int /*<<< orphan*/  int_counter0; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  napi; scalar_t__ set_itr; scalar_t__ itr_register; int /*<<< orphan*/  itr_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct igbvf_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct net_device *netdev = data;
	struct igbvf_adapter *adapter = FUNC2(netdev);

	adapter->int_counter0++;

	/* Write the ITR value calculated at the end of the
	 * previous interrupt.
	 */
	if (adapter->rx_ring->set_itr) {
		FUNC3(adapter->rx_ring->itr_val,
		       adapter->hw.hw_addr + adapter->rx_ring->itr_register);
		adapter->rx_ring->set_itr = 0;
	}

	if (FUNC1(&adapter->rx_ring->napi)) {
		adapter->total_rx_bytes = 0;
		adapter->total_rx_packets = 0;
		FUNC0(&adapter->rx_ring->napi);
	}

	return IRQ_HANDLED;
}