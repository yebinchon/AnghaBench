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

/* Variables and functions */
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct pch_gbe_adapter*) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC4(pdev);
	struct pch_gbe_adapter *adapter = FUNC0(netdev);

	if (FUNC2(netdev)) {
		if (FUNC3(adapter)) {
			FUNC5("can't bring device back up after reset\n");
			return;
		}
	}
	FUNC1(netdev);
}