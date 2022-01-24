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
struct e1000_adapter {TYPE_1__* pdev; TYPE_2__* msix_entries; struct net_device* netdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static void FUNC1(struct e1000_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	if (adapter->msix_entries) {
		int vector = 0;

		FUNC0(adapter->msix_entries[vector].vector, netdev);
		vector++;

		FUNC0(adapter->msix_entries[vector].vector, netdev);
		vector++;

		/* Other Causes interrupt vector */
		FUNC0(adapter->msix_entries[vector].vector, netdev);
		return;
	}

	FUNC0(adapter->pdev->irq, netdev);
}