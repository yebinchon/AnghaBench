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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_addr; } ;
struct ixgbe_adapter {int flags; TYPE_1__ hw; int /*<<< orphan*/  ixgbe_ieee_ets; int /*<<< orphan*/  ixgbe_ieee_pfc; int /*<<< orphan*/  service_task; int /*<<< orphan*/  state; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IXGBE_DCA_CTRL ; 
 int IXGBE_FLAG_DCA_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_vfs ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 struct ixgbe_adapter* FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 

__attribute__((used)) static void FUNC20(struct pci_dev *pdev)
{
	struct ixgbe_adapter *adapter = FUNC15(pdev);
	struct net_device *netdev = adapter->netdev;

	FUNC7(adapter);

	FUNC18(__IXGBE_DOWN, &adapter->state);
	FUNC1(&adapter->service_task);


#ifdef CONFIG_IXGBE_DCA
	if (adapter->flags & IXGBE_FLAG_DCA_ENABLED) {
		adapter->flags &= ~IXGBE_FLAG_DCA_ENABLED;
		dca_remove_requester(&pdev->dev);
		IXGBE_WRITE_REG(&adapter->hw, IXGBE_DCA_CTRL, 1);
	}

#endif
#ifdef CONFIG_IXGBE_HWMON
	ixgbe_sysfs_exit(adapter);
#endif /* CONFIG_IXGBE_HWMON */

	/* remove the added san mac */
	FUNC8(netdev);

	if (netdev->reg_state == NETREG_REGISTERED)
		FUNC19(netdev);

#ifdef CONFIG_PCI_IOV
	/*
	 * Only disable SR-IOV on unload if the user specified the now
	 * deprecated max_vfs module parameter.
	 */
	if (max_vfs)
		ixgbe_disable_sriov(adapter);
#endif
	FUNC6(adapter);

	FUNC10(adapter);

#ifdef CONFIG_DCB
	kfree(adapter->ixgbe_ieee_pfc);
	kfree(adapter->ixgbe_ieee_ets);

#endif
	FUNC5(adapter->hw.hw_addr);
	FUNC16(pdev, FUNC17(pdev,
				     IORESOURCE_MEM));

	FUNC3("complete\n");

	FUNC4(netdev);

	FUNC14(pdev);

	FUNC13(pdev);
}