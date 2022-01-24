#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int dummy; } ;
struct pch_gbe_adapter {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  int /*<<< orphan*/  pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC6(struct pci_dev *pdev,
						pci_channel_state_t state)
{
	struct net_device *netdev = FUNC5(pdev);
	struct pch_gbe_adapter *adapter = FUNC0(netdev);

	FUNC1(netdev);
	if (FUNC2(netdev))
		FUNC3(adapter);
	FUNC4(pdev);
	/* Request a slot slot reset. */
	return PCI_ERS_RESULT_NEED_RESET;
}