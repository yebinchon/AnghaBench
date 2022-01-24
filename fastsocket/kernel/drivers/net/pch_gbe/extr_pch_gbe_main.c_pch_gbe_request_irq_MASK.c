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
struct pch_gbe_adapter {int have_msi; TYPE_1__* pdev; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int /*<<< orphan*/  pch_gbe_intr ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct pch_gbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int err;
	int flags;

	flags = IRQF_SHARED;
	adapter->have_msi = false;
	err = FUNC0(adapter->pdev);
	FUNC1("call pci_enable_msi\n");
	if (err) {
		FUNC1("call pci_enable_msi - Error: %d\n", err);
	} else {
		flags = 0;
		adapter->have_msi = true;
	}
	err = FUNC3(adapter->pdev->irq, &pch_gbe_intr,
			  flags, netdev->name, netdev);
	if (err)
		FUNC2("Unable to allocate interrupt Error: %d\n", err);
	FUNC1("adapter->have_msi : %d  flags : 0x%04x  return : 0x%04x\n",
		 adapter->have_msi, flags, err);
	return err;
}