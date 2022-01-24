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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int wol; scalar_t__ en_mng_pt; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_ADVD3WUC ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int E1000_RCTL_MPE ; 
 int /*<<< orphan*/  E1000_STATUS ; 
 int E1000_STATUS_LU ; 
 int /*<<< orphan*/  E1000_WUC ; 
 int E1000_WUC_PME_EN ; 
 int /*<<< orphan*/  E1000_WUFC ; 
 int E1000_WUFC_LNKC ; 
 int E1000_WUFC_MC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct net_device* FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev, bool *enable_wake,
			  bool runtime)
{
	struct net_device *netdev = FUNC12(pdev);
	struct igb_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl, rctl, status;
	u32 wufc = runtime ? E1000_WUFC_LNKC : adapter->wol;
#ifdef CONFIG_PM
	int retval = 0;
#endif

	FUNC9(netdev);

	if (FUNC10(netdev))
		FUNC0(netdev, true);

	FUNC1(adapter);

#ifdef CONFIG_PM
	retval = pci_save_state(pdev);
	if (retval)
		return retval;
#endif

	status = FUNC14(E1000_STATUS);
	if (status & E1000_STATUS_LU)
		wufc &= ~E1000_WUFC_LNKC;

	if (wufc) {
		FUNC7(adapter);
		FUNC6(netdev);

		/* turn on all-multi mode if wake on multicast is enabled */
		if (wufc & E1000_WUFC_MC) {
			rctl = FUNC14(E1000_RCTL);
			rctl |= E1000_RCTL_MPE;
			FUNC15(E1000_RCTL, rctl);
		}

		ctrl = FUNC14(E1000_CTRL);
		/* advertise wake from D3Cold */
		#define E1000_CTRL_ADVD3WUC 0x00100000
		/* phy power management enable */
		#define E1000_CTRL_EN_PHY_PWR_MGMT 0x00200000
		ctrl |= E1000_CTRL_ADVD3WUC;
		FUNC15(E1000_CTRL, ctrl);

		/* Allow time for pending master requests to run */
		FUNC2(hw);

		FUNC15(E1000_WUC, E1000_WUC_PME_EN);
		FUNC15(E1000_WUFC, wufc);
	} else {
		FUNC15(E1000_WUC, 0);
		FUNC15(E1000_WUFC, 0);
	}

	*enable_wake = wufc || adapter->en_mng_pt;
	if (!*enable_wake)
		FUNC3(adapter);
	else
		FUNC4(adapter);

	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
	 * would have already happened in close and is redundant.
	 */
	FUNC5(adapter);

	FUNC11(pdev);

	return 0;
}