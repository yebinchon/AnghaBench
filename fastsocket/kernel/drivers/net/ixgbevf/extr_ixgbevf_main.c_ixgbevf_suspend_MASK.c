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
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *netdev = FUNC9(pdev);
	struct ixgbevf_adapter *adapter = FUNC5(netdev);
#ifdef CONFIG_PM
	int retval = 0;
#endif

	FUNC6(netdev);

	if (FUNC7(netdev)) {
		FUNC11();
		FUNC1(adapter);
		FUNC4(adapter);
		FUNC3(adapter);
		FUNC2(adapter);
		FUNC12();
	}

	FUNC0(adapter);

#ifdef CONFIG_PM
	retval = pci_save_state(pdev);
	if (retval)
		return retval;

#endif
	FUNC8(pdev);

	return 0;
}