#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {char* name; } ;
struct igbvf_adapter {TYPE_3__* msix_entries; int /*<<< orphan*/  current_itr; TYPE_2__* rx_ring; TYPE_1__* tx_ring; struct net_device* netdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  vector; } ;
struct TYPE_5__ {char* name; int /*<<< orphan*/  itr_val; void* itr_register; } ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  itr_val; void* itr_register; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC1 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  igbvf_intr_msix_rx ; 
 int /*<<< orphan*/  igbvf_intr_msix_tx ; 
 int /*<<< orphan*/  igbvf_msix_other ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct igbvf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err = 0, vector = 0;

	if (FUNC5(netdev->name) < (IFNAMSIZ - 5)) {
		FUNC4(adapter->tx_ring->name, "%s-tx-0", netdev->name);
		FUNC4(adapter->rx_ring->name, "%s-rx-0", netdev->name);
	} else {
		FUNC2(adapter->tx_ring->name, netdev->name, IFNAMSIZ);
		FUNC2(adapter->rx_ring->name, netdev->name, IFNAMSIZ);
	}

	err = FUNC3(adapter->msix_entries[vector].vector,
	                  igbvf_intr_msix_tx, 0, adapter->tx_ring->name,
	                  netdev);
	if (err)
		goto out;

	adapter->tx_ring->itr_register = FUNC0(vector);
	adapter->tx_ring->itr_val = adapter->current_itr;
	vector++;

	err = FUNC3(adapter->msix_entries[vector].vector,
	                  igbvf_intr_msix_rx, 0, adapter->rx_ring->name,
	                  netdev);
	if (err)
		goto out;

	adapter->rx_ring->itr_register = FUNC0(vector);
	adapter->rx_ring->itr_val = adapter->current_itr;
	vector++;

	err = FUNC3(adapter->msix_entries[vector].vector,
	                  igbvf_msix_other, 0, netdev->name, netdev);
	if (err)
		goto out;

	FUNC1(adapter);
	return 0;
out:
	return err;
}