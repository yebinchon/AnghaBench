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
struct TYPE_2__ {int /*<<< orphan*/  tx_timeout_count; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  reset_task; TYPE_1__ stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev)
{
	struct pch_gbe_adapter *adapter = FUNC0(netdev);

	/* Do the reset outside of interrupt context */
	adapter->stats.tx_timeout_count++;
	FUNC1(&adapter->reset_task);
}