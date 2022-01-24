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
struct net_device {int /*<<< orphan*/  name; } ;
struct e1000_adapter {int flags; TYPE_1__* pdev; int /*<<< orphan*/  int_mode; scalar_t__ msix_entries; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000E_INT_MODE_LEGACY ; 
 int /*<<< orphan*/  E1000E_INT_MODE_MSI ; 
 int FLAG_MSI_ENABLED ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  e1000_intr ; 
 int /*<<< orphan*/  e1000_intr_msi ; 
 int FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct e1000_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err;

	if (adapter->msix_entries) {
		err = FUNC0(adapter);
		if (!err)
			return err;
		/* fall back to MSI */
		FUNC1(adapter);
		adapter->int_mode = E1000E_INT_MODE_MSI;
		FUNC2(adapter);
	}
	if (adapter->flags & FLAG_MSI_ENABLED) {
		err = FUNC4(adapter->pdev->irq, e1000_intr_msi, 0,
				  netdev->name, netdev);
		if (!err)
			return err;

		/* fall back to legacy interrupt */
		FUNC1(adapter);
		adapter->int_mode = E1000E_INT_MODE_LEGACY;
	}

	err = FUNC4(adapter->pdev->irq, e1000_intr, IRQF_SHARED,
			  netdev->name, netdev);
	if (err)
		FUNC3("Unable to allocate interrupt, Error: %d\n", err);

	return err;
}