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
typedef  int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int txpctl_mode; int tssi_idx; int tx_pwr_idx_over; scalar_t__ tssi_npt; } ;
typedef  enum b43_lpphy_txpctl_mode { ____Placeholder_b43_lpphy_txpctl_mode } b43_lpphy_txpctl_mode ;

/* Variables and functions */
 int B43_LPPHY_TXPCTL_HW ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_CMD ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_NNUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev,
				       enum b43_lpphy_txpctl_mode mode)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	enum b43_lpphy_txpctl_mode oldmode;

	FUNC5(dev);
	oldmode = lpphy->txpctl_mode;
	if (oldmode == mode)
		return;
	lpphy->txpctl_mode = mode;

	if (oldmode == B43_LPPHY_TXPCTL_HW) {
		//TODO Update TX Power NPT
		//TODO Clear all TX Power offsets
	} else {
		if (mode == B43_LPPHY_TXPCTL_HW) {
			//TODO Recalculate target TX power
			FUNC2(dev, B43_LPPHY_TX_PWR_CTL_CMD,
					0xFF80, lpphy->tssi_idx);
			FUNC2(dev, B43_LPPHY_TX_PWR_CTL_NNUM,
					0x8FFF, ((u16)lpphy->tssi_npt << 16));
			//TODO Set "TSSI Transmit Count" variable to total transmitted frame count
			FUNC4(dev);
			lpphy->tx_pwr_idx_over = -1;
		}
	}
	if (dev->phy.rev >= 2) {
		if (mode == B43_LPPHY_TXPCTL_HW)
			FUNC3(dev, FUNC0(0xD0), 0x2);
		else
			FUNC1(dev, FUNC0(0xD0), 0xFFFD);
	}
	FUNC6(dev);
}