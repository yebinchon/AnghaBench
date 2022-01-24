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
struct e1000_hw {scalar_t__ mac_type; scalar_t__ media_type; } ;
struct e1000_adapter {int wol; scalar_t__ en_mng_pt; int /*<<< orphan*/  flags; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_ADVD3WUC ; 
 int E1000_CTRL_EN_PHY_PWR_MGMT ; 
 int E1000_CTRL_EXT_SDP7_DATA ; 
 int E1000_RCTL_EN ; 
 int E1000_RCTL_MPE ; 
 int E1000_STATUS_LU ; 
 int E1000_WUC_PME_EN ; 
 int E1000_WUFC_LNKC ; 
 int E1000_WUFC_MC ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WUC ; 
 int /*<<< orphan*/  WUFC ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 scalar_t__ e1000_82540 ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 scalar_t__ e1000_media_type_fiber ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct e1000_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct net_device* FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pdev, bool *enable_wake)
{
	struct net_device *netdev = FUNC12(pdev);
	struct e1000_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl, ctrl_ext, rctl, status;
	u32 wufc = adapter->wol;
#ifdef CONFIG_PM
	int retval = 0;
#endif

	FUNC9(netdev);

	if (FUNC10(netdev)) {
		FUNC0(FUNC14(__E1000_RESETTING, &adapter->flags));
		FUNC1(adapter);
	}

#ifdef CONFIG_PM
	retval = pci_save_state(pdev);
	if (retval)
		return retval;
#endif

	status = FUNC6(STATUS);
	if (status & E1000_STATUS_LU)
		wufc &= ~E1000_WUFC_LNKC;

	if (wufc) {
		FUNC5(adapter);
		FUNC4(netdev);

		rctl = FUNC6(RCTL);

		/* turn on all-multi mode if wake on multicast is enabled */
		if (wufc & E1000_WUFC_MC)
			rctl |= E1000_RCTL_MPE;

		/* enable receives in the hardware */
		FUNC7(RCTL, rctl | E1000_RCTL_EN);

		if (hw->mac_type >= e1000_82540) {
			ctrl = FUNC6(CTRL);
			/* advertise wake from D3Cold */
			#define E1000_CTRL_ADVD3WUC 0x00100000
			/* phy power management enable */
			#define E1000_CTRL_EN_PHY_PWR_MGMT 0x00200000
			ctrl |= E1000_CTRL_ADVD3WUC |
				E1000_CTRL_EN_PHY_PWR_MGMT;
			FUNC7(CTRL, ctrl);
		}

		if (hw->media_type == e1000_media_type_fiber ||
		    hw->media_type == e1000_media_type_internal_serdes) {
			/* keep the laser running in D3 */
			ctrl_ext = FUNC6(CTRL_EXT);
			ctrl_ext |= E1000_CTRL_EXT_SDP7_DATA;
			FUNC7(CTRL_EXT, ctrl_ext);
		}

		FUNC7(WUC, E1000_WUC_PME_EN);
		FUNC7(WUFC, wufc);
	} else {
		FUNC7(WUC, 0);
		FUNC7(WUFC, 0);
	}

	FUNC3(adapter);

	*enable_wake = !!wufc;

	/* make sure adapter isn't asleep if manageability is enabled */
	if (adapter->en_mng_pt)
		*enable_wake = true;

	if (FUNC10(netdev))
		FUNC2(adapter);

	FUNC11(pdev);

	return 0;
}