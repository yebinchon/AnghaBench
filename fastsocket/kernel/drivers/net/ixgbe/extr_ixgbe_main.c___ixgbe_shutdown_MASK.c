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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int wol; struct ixgbe_hw hw; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CTRL ; 
 int IXGBE_CTRL_GIO_DIS ; 
 int /*<<< orphan*/  IXGBE_FCTRL ; 
 int IXGBE_FCTRL_MPE ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IXGBE_WUC ; 
 int /*<<< orphan*/  IXGBE_WUFC ; 
 int IXGBE_WUFC_MC ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
#define  ixgbe_mac_82598EB 130 
#define  ixgbe_mac_82599EB 129 
#define  ixgbe_mac_X540 128 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct ixgbe_adapter* FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbe_hw*) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, bool *enable_wake)
{
	struct ixgbe_adapter *adapter = FUNC12(pdev);
	struct net_device *netdev = adapter->netdev;
	struct ixgbe_hw *hw = &adapter->hw;
	u32 ctrl, fctrl;
	u32 wufc = adapter->wol;
#ifdef CONFIG_PM
	int retval = 0;
#endif

	FUNC9(netdev);

	FUNC15();
	if (FUNC10(netdev)) {
		FUNC3(adapter);
		FUNC6(adapter);
		FUNC5(adapter);
		FUNC4(adapter);
	}
	FUNC16();

	FUNC2(adapter);

#ifdef CONFIG_PM
	retval = pci_save_state(pdev);
	if (retval)
		return retval;

#endif
	if (wufc) {
		FUNC8(netdev);

		/* enable the optics for 82599 SFP+ fiber as we can WoL */
		if (hw->mac.ops.enable_tx_laser)
			hw->mac.ops.enable_tx_laser(hw);

		/* turn on all-multi mode if wake on multicast is enabled */
		if (wufc & IXGBE_WUFC_MC) {
			fctrl = FUNC0(hw, IXGBE_FCTRL);
			fctrl |= IXGBE_FCTRL_MPE;
			FUNC1(hw, IXGBE_FCTRL, fctrl);
		}

		ctrl = FUNC0(hw, IXGBE_CTRL);
		ctrl |= IXGBE_CTRL_GIO_DIS;
		FUNC1(hw, IXGBE_CTRL, ctrl);

		FUNC1(hw, IXGBE_WUFC, wufc);
	} else {
		FUNC1(hw, IXGBE_WUC, 0);
		FUNC1(hw, IXGBE_WUFC, 0);
	}

	switch (hw->mac.type) {
	case ixgbe_mac_82598EB:
		FUNC14(pdev, false);
		break;
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
		FUNC14(pdev, !!wufc);
		break;
	default:
		break;
	}

	*enable_wake = !!wufc;

	FUNC7(adapter);

	FUNC11(pdev);

	return 0;
}