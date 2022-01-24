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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct lpphy_tx_gains {int pad; int gm; int pga; int dac; } ;
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {scalar_t__ txpctl_mode; scalar_t__ tx_pwr_idx_over; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_RF_PWR_OVERRIDE ; 
 scalar_t__ B43_LPPHY_TXPCTL_OFF ; 
 int /*<<< orphan*/  B43_LPPHY_TXPCTL_SW ; 
 int /*<<< orphan*/  B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,struct lpphy_tx_gains) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct b43_wldev *dev, u8 index)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	struct lpphy_tx_gains gains;
	u32 iq_comp, tx_gain, coeff, rf_power;

	lpphy->tx_pwr_idx_over = index;
	FUNC6(dev);
	if (lpphy->txpctl_mode != B43_LPPHY_TXPCTL_OFF)
		FUNC12(dev, B43_LPPHY_TXPCTL_SW);
	if (dev->phy.rev >= 2) {
		iq_comp = FUNC2(dev, FUNC1(7, index + 320));
		tx_gain = FUNC2(dev, FUNC1(7, index + 192));
		gains.pad = (tx_gain >> 16) & 0xFF;
		gains.gm = tx_gain & 0xFF;
		gains.pga = (tx_gain >> 8) & 0xFF;
		gains.dac = (iq_comp >> 28) & 0xFF;
		FUNC10(dev, gains);
	} else {
		iq_comp = FUNC2(dev, FUNC1(10, index + 320));
		tx_gain = FUNC2(dev, FUNC1(10, index + 192));
		FUNC4(dev, B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL,
				0xF800, (tx_gain >> 4) & 0x7FFF);
		FUNC8(dev, tx_gain & 0x7);
		FUNC9(dev, (tx_gain >> 24) & 0x7F);
	}
	FUNC7(dev, (iq_comp >> 20) & 0xFF);
	FUNC11(dev, (iq_comp >> 10) & 0x3FF, iq_comp & 0x3FF);
	if (dev->phy.rev >= 2) {
		coeff = FUNC2(dev, FUNC1(7, index + 448));
	} else {
		coeff = FUNC2(dev, FUNC1(10, index + 448));
	}
	FUNC3(dev, FUNC0(0, 85), coeff & 0xFFFF);
	if (dev->phy.rev >= 2) {
		rf_power = FUNC2(dev, FUNC1(7, index + 576));
		FUNC4(dev, B43_LPPHY_RF_PWR_OVERRIDE, 0xFF00,
				rf_power & 0xFFFF);//SPEC FIXME mask & set != 0
	}
	FUNC5(dev);
}