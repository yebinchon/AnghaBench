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
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct atl1e_hw {struct atl1e_adapter* adapter; } ;
struct atl1e_adapter {struct pci_dev* pdev; } ;

/* Variables and functions */
 int FUNC0 (struct atl1e_hw*,int /*<<< orphan*/ ) ; 
 int MDIO_BUSY ; 
 int MDIO_START ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int MII_CR_AUTO_NEG_EN ; 
 int MII_CR_RESET ; 
 int MII_CR_RESTART_AUTO_NEG ; 
 int /*<<< orphan*/  REG_MDIO_CTRL ; 
 int FUNC1 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct atl1e_hw *hw)
{
	struct atl1e_adapter *adapter = hw->adapter;
	struct pci_dev *pdev = adapter->pdev;
	int ret_val;
	u16 phy_data;

	phy_data = MII_CR_RESET | MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG;

	ret_val = FUNC1(hw, MII_BMCR, phy_data);
	if (ret_val) {
		u32 val;
		int i;
		/**************************************
		 * pcie serdes link may be down !
		 **************************************/
		for (i = 0; i < 25; i++) {
			FUNC3(1);
			val = FUNC0(hw, REG_MDIO_CTRL);
			if (!(val & (MDIO_START | MDIO_BUSY)))
				break;
		}

		if (0 != (val & (MDIO_START | MDIO_BUSY))) {
			FUNC2(&pdev->dev,
				"pcie linkdown at least for 25ms\n");
			return ret_val;
		}

		FUNC2(&pdev->dev, "pcie linkup after %d ms\n", i);
	}
	return 0;
}