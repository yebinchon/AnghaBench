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
typedef  scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  link_duplex; int /*<<< orphan*/  link_speed; } ;
struct pch_gbe_hw {TYPE_1__ mac; } ;
struct pch_gbe_adapter {scalar_t__ wake_up_evt; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_gbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pch_gbe_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pch_gbe_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct net_device* FUNC12 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC12(pdev);
	struct pch_gbe_adapter *adapter = FUNC0(netdev);
	struct pch_gbe_hw *hw = &adapter->hw;
	u32 wufc = adapter->wake_up_evt;
	int retval = 0;

	FUNC1(netdev);
	if (FUNC2(netdev))
		FUNC4(adapter);
	if (wufc) {
		FUNC8(netdev);
		FUNC10(adapter);
		FUNC3(adapter);
		FUNC9(adapter, hw->mac.link_speed,
					hw->mac.link_duplex);
		FUNC7(adapter, hw->mac.link_speed,
					hw->mac.link_duplex);
		FUNC6(hw, wufc);
		FUNC11(pdev);
	} else {
		FUNC5(hw);
		FUNC6(hw, wufc);
		FUNC11(pdev);
	}
	return retval;
}