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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct igb_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 scalar_t__ FUNC2 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC6(pdev);
	struct igb_adapter *adapter = FUNC3(netdev);

	if (FUNC5(netdev)) {
		if (FUNC2(adapter)) {
			FUNC0(&pdev->dev, "igb_up failed after reset\n");
			return;
		}
	}

	FUNC4(netdev);

	/* let the f/w know that the h/w is now under the control of the
	 * driver.
	 */
	FUNC1(adapter);
}