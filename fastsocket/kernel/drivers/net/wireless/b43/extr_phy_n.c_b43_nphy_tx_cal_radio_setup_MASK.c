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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;
struct b43_phy_n {int* tx_rx_cal_radio_saveregs; scalar_t__ ipa2g_on; scalar_t__ ipa5g_on; } ;

/* Variables and functions */
 int B2055_C1_PWRDET_RXTX ; 
 int /*<<< orphan*/  B2055_C1_TX_BB_MXGM ; 
 int B2055_C1_TX_RF_IQCAL1 ; 
 int B2055_C1_TX_RF_IQCAL2 ; 
 int B2055_C2_PWRDET_RXTX ; 
 int /*<<< orphan*/  B2055_C2_TX_BB_MXGM ; 
 int B2055_C2_TX_RF_IQCAL1 ; 
 int B2055_C2_TX_RF_IQCAL2 ; 
 int B2055_CAL_LPOCTL ; 
 int B2055_CAL_RCALRTS ; 
 int B2055_CAL_RCCALRTS ; 
 int B2055_CAL_RVARCTL ; 
 int B2055_CAL_TS ; 
 int B2055_PADDRV ; 
 int B2055_PLL_LFC1 ; 
 int B2055_XOCTL1 ; 
 int B2055_XOCTL2 ; 
 int B2055_XOMISC ; 
 int B2055_XOREGUL ; 
 int /*<<< orphan*/  B43_NPHY_BANDCTL ; 
 int B43_NPHY_BANDCTL_5GHZ ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev)
{
	struct b43_phy_n *nphy = dev->phy.n;
	u16 *save = nphy->tx_rx_cal_radio_saveregs;
	u16 tmp;
	u8 offset, i;

	if (dev->phy.rev >= 3) {
	    for (i = 0; i < 2; i++) {
		tmp = (i == 0) ? 0x2000 : 0x3000;
		offset = i * 11;

		save[offset + 0] = FUNC3(dev, B2055_CAL_RVARCTL);
		save[offset + 1] = FUNC3(dev, B2055_CAL_LPOCTL);
		save[offset + 2] = FUNC3(dev, B2055_CAL_TS);
		save[offset + 3] = FUNC3(dev, B2055_CAL_RCCALRTS);
		save[offset + 4] = FUNC3(dev, B2055_CAL_RCALRTS);
		save[offset + 5] = FUNC3(dev, B2055_PADDRV);
		save[offset + 6] = FUNC3(dev, B2055_XOCTL1);
		save[offset + 7] = FUNC3(dev, B2055_XOCTL2);
		save[offset + 8] = FUNC3(dev, B2055_XOREGUL);
		save[offset + 9] = FUNC3(dev, B2055_XOMISC);
		save[offset + 10] = FUNC3(dev, B2055_PLL_LFC1);

		if (FUNC0(dev->wl) == IEEE80211_BAND_5GHZ) {
			FUNC5(dev, tmp | B2055_CAL_RVARCTL, 0x0A);
			FUNC5(dev, tmp | B2055_CAL_LPOCTL, 0x40);
			FUNC5(dev, tmp | B2055_CAL_TS, 0x55);
			FUNC5(dev, tmp | B2055_CAL_RCCALRTS, 0);
			FUNC5(dev, tmp | B2055_CAL_RCALRTS, 0);
			if (nphy->ipa5g_on) {
				FUNC5(dev, tmp | B2055_PADDRV, 4);
				FUNC5(dev, tmp | B2055_XOCTL1, 1);
			} else {
				FUNC5(dev, tmp | B2055_PADDRV, 0);
				FUNC5(dev, tmp | B2055_XOCTL1, 0x2F);
			}
			FUNC5(dev, tmp | B2055_XOCTL2, 0);
		} else {
			FUNC5(dev, tmp | B2055_CAL_RVARCTL, 0x06);
			FUNC5(dev, tmp | B2055_CAL_LPOCTL, 0x40);
			FUNC5(dev, tmp | B2055_CAL_TS, 0x55);
			FUNC5(dev, tmp | B2055_CAL_RCCALRTS, 0);
			FUNC5(dev, tmp | B2055_CAL_RCALRTS, 0);
			FUNC5(dev, tmp | B2055_XOCTL1, 0);
			if (nphy->ipa2g_on) {
				FUNC5(dev, tmp | B2055_PADDRV, 6);
				FUNC5(dev, tmp | B2055_XOCTL2,
					(dev->phy.rev < 5) ? 0x11 : 0x01);
			} else {
				FUNC5(dev, tmp | B2055_PADDRV, 0);
				FUNC5(dev, tmp | B2055_XOCTL2, 0);
			}
		}
		FUNC5(dev, tmp | B2055_XOREGUL, 0);
		FUNC5(dev, tmp | B2055_XOMISC, 0);
		FUNC5(dev, tmp | B2055_PLL_LFC1, 0);
	    }
	} else {
		save[0] = FUNC3(dev, B2055_C1_TX_RF_IQCAL1);
		FUNC5(dev, B2055_C1_TX_RF_IQCAL1, 0x29);

		save[1] = FUNC3(dev, B2055_C1_TX_RF_IQCAL2);
		FUNC5(dev, B2055_C1_TX_RF_IQCAL2, 0x54);

		save[2] = FUNC3(dev, B2055_C2_TX_RF_IQCAL1);
		FUNC5(dev, B2055_C2_TX_RF_IQCAL1, 0x29);

		save[3] = FUNC3(dev, B2055_C2_TX_RF_IQCAL2);
		FUNC5(dev, B2055_C2_TX_RF_IQCAL2, 0x54);

		save[3] = FUNC3(dev, B2055_C1_PWRDET_RXTX);
		save[4] = FUNC3(dev, B2055_C2_PWRDET_RXTX);

		if (!(FUNC1(dev, B43_NPHY_BANDCTL) &
		    B43_NPHY_BANDCTL_5GHZ)) {
			FUNC5(dev, B2055_C1_PWRDET_RXTX, 0x04);
			FUNC5(dev, B2055_C2_PWRDET_RXTX, 0x04);
		} else {
			FUNC5(dev, B2055_C1_PWRDET_RXTX, 0x20);
			FUNC5(dev, B2055_C2_PWRDET_RXTX, 0x20);
		}

		if (dev->phy.rev < 2) {
			FUNC4(dev, B2055_C1_TX_BB_MXGM, 0x20);
			FUNC4(dev, B2055_C2_TX_BB_MXGM, 0x20);
		} else {
			FUNC2(dev, B2055_C1_TX_BB_MXGM, ~0x20);
			FUNC2(dev, B2055_C2_TX_BB_MXGM, ~0x20);
		}
	}
}