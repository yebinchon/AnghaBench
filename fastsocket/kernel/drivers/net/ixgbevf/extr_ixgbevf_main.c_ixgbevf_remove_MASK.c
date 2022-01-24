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
struct pci_dev {int dummy; } ;
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_addr; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; TYPE_1__ hw; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ixgbevf_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 struct net_device* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC10(pdev);
	struct ixgbevf_adapter *adapter = FUNC8(netdev);

	FUNC12(__IXGBEVF_DOWN, &adapter->state);

	FUNC1(&adapter->watchdog_timer);

	FUNC0(&adapter->reset_task);
	FUNC0(&adapter->watchdog_task);

	if (netdev->reg_state == NETREG_REGISTERED)
		FUNC13(netdev);

	FUNC5(adapter);
	FUNC6(adapter);

	FUNC4(adapter->hw.hw_addr);
	FUNC11(pdev);

	FUNC3(&adapter->hw, "Remove complete\n");

	FUNC7(adapter->tx_ring);
	FUNC7(adapter->rx_ring);

	FUNC2(netdev);

	FUNC9(pdev);
}