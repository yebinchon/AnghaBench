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
struct net_device {char* name; } ;
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct ixgbe_q_vector {int num_q_vectors; char* name; int flags; struct msix_entry* msix_entries; int /*<<< orphan*/  pdev; struct ixgbe_q_vector** q_vector; int /*<<< orphan*/  affinity_mask; TYPE_2__ tx; TYPE_1__ rx; struct net_device* netdev; } ;
struct ixgbe_adapter {int num_q_vectors; char* name; int flags; struct msix_entry* msix_entries; int /*<<< orphan*/  pdev; struct ixgbe_adapter** q_vector; int /*<<< orphan*/  affinity_mask; TYPE_2__ tx; TYPE_1__ rx; struct net_device* netdev; } ;

/* Variables and functions */
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ; 
 int IXGBE_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ixgbe_q_vector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ixgbe_msix_clean_rings ; 
 int /*<<< orphan*/ * ixgbe_msix_other ; 
 int /*<<< orphan*/  FUNC3 (struct msix_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct ixgbe_q_vector*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ixgbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int vector, err;
	int ri = 0, ti = 0;

	for (vector = 0; vector < adapter->num_q_vectors; vector++) {
		struct ixgbe_q_vector *q_vector = adapter->q_vector[vector];
		struct msix_entry *entry = &adapter->msix_entries[vector];

		if (q_vector->tx.ring && q_vector->rx.ring) {
			FUNC6(q_vector->name, sizeof(q_vector->name) - 1,
				 "%s-%s-%d", netdev->name, "TxRx", ri++);
			ti++;
		} else if (q_vector->rx.ring) {
			FUNC6(q_vector->name, sizeof(q_vector->name) - 1,
				 "%s-%s-%d", netdev->name, "rx", ri++);
		} else if (q_vector->tx.ring) {
			FUNC6(q_vector->name, sizeof(q_vector->name) - 1,
				 "%s-%s-%d", netdev->name, "tx", ti++);
		} else {
			/* skip this unused q_vector */
			continue;
		}
		err = FUNC5(entry->vector, &ixgbe_msix_clean_rings, 0,
				  q_vector->name, q_vector);
		if (err) {
			FUNC0(probe, "request_irq failed for MSIX interrupt "
			      "Error: %d\n", err);
			goto free_queue_irqs;
		}
		/* If Flow Director is enabled, set interrupt affinity */
		if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
			/* assign the mask for this irq */
			FUNC2(entry->vector,
					      &q_vector->affinity_mask);
		}
	}

	err = FUNC5(adapter->msix_entries[vector].vector,
			  ixgbe_msix_other, 0, netdev->name, adapter);
	if (err) {
		FUNC0(probe, "request_irq for msix_other failed: %d\n", err);
		goto free_queue_irqs;
	}

	return 0;

free_queue_irqs:
	while (vector) {
		vector--;
		FUNC2(adapter->msix_entries[vector].vector,
				      NULL);
		FUNC1(adapter->msix_entries[vector].vector,
			 adapter->q_vector[vector]);
	}
	adapter->flags &= ~IXGBE_FLAG_MSIX_ENABLED;
	FUNC4(adapter->pdev);
	FUNC3(adapter->msix_entries);
	adapter->msix_entries = NULL;
	return err;
}