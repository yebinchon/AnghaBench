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
struct atl1_hw {int phy_configured; struct atl1_adapter* back; } ;
struct atl1_adapter {struct pci_dev* pdev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct atl1_hw*) ; 
 scalar_t__ FUNC1 (struct atl1_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct atl1_adapter*) ; 

__attribute__((used)) static s32 FUNC4(struct atl1_hw *hw)
{
	struct pci_dev *pdev = hw->back->pdev;
	struct atl1_adapter *adapter = hw->back;
	s32 ret_val;

	/*
	 * Options:
	 *  PHY will advertise value(s) parsed from
	 *  autoneg_advertised and fc
	 *  no matter what autoneg is , We will not wait link result.
	 */
	ret_val = FUNC1(hw);
	if (ret_val) {
		if (FUNC3(adapter))
			FUNC2(&pdev->dev,
				"error setting up autonegotiation\n");
		return ret_val;
	}
	/* SW.Reset , En-Auto-Neg if needed */
	ret_val = FUNC0(hw);
	if (ret_val) {
		if (FUNC3(adapter))
			FUNC2(&pdev->dev, "error resetting phy\n");
		return ret_val;
	}
	hw->phy_configured = true;
	return ret_val;
}