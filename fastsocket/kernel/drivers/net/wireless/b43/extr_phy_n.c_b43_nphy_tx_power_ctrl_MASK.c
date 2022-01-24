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
struct TYPE_2__ {int rev; scalar_t__ is_40mhz; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;
struct b43_phy_n {int txpwrctrl; int* tx_pwr_idx; scalar_t__ hang_avoid; int /*<<< orphan*/  adj_pwr_tbl; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 int B43_HF_TSSIRPSMW ; 
 int /*<<< orphan*/  B43_NPHY_AFECTL_OVER ; 
 int /*<<< orphan*/  B43_NPHY_AFECTL_OVER1 ; 
 int /*<<< orphan*/  B43_NPHY_BPHY_CTL3 ; 
 int B43_NPHY_BPHY_CTL3_SCALE ; 
 int /*<<< orphan*/  B43_NPHY_C1_TXPCTL_STAT ; 
 int /*<<< orphan*/  B43_NPHY_C2_TXPCTL_STAT ; 
 int /*<<< orphan*/  B43_NPHY_PAPD_EN0 ; 
 int /*<<< orphan*/  B43_NPHY_PAPD_EN1 ; 
 int /*<<< orphan*/  B43_NPHY_TABLE_ADDR ; 
 int /*<<< orphan*/  B43_NPHY_TABLE_DATALO ; 
 int /*<<< orphan*/  B43_NPHY_TXPCTL_CMD ; 
 int B43_NPHY_TXPCTL_CMD_COEFF ; 
 int B43_NPHY_TXPCTL_CMD_HWPCTLEN ; 
 int B43_NPHY_TXPCTL_CMD_INIT ; 
 int B43_NPHY_TXPCTL_CMD_PCTLEN ; 
 int /*<<< orphan*/  B43_NPHY_TXPCTL_INIT ; 
 int B43_NPHY_TXPCTL_INIT_PIDXI1 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int IEEE80211_BAND_5GHZ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int) ; 
 scalar_t__ FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct b43_wldev *dev, bool enable)
{
	struct b43_phy_n *nphy = dev->phy.n;
	u8 i;
	u16 bmask, val, tmp;
	enum ieee80211_band band = FUNC1(dev->wl);

	if (nphy->hang_avoid)
		FUNC5(dev, 1);

	nphy->txpwrctrl = enable;
	if (!enable) {
		if (dev->phy.rev >= 3 &&
		    (FUNC9(dev, B43_NPHY_TXPCTL_CMD) &
		     (B43_NPHY_TXPCTL_CMD_COEFF |
		      B43_NPHY_TXPCTL_CMD_HWPCTLEN |
		      B43_NPHY_TXPCTL_CMD_PCTLEN))) {
			/* We disable enabled TX pwr ctl, save it's state */
			nphy->tx_pwr_idx[0] = FUNC9(dev,
						B43_NPHY_C1_TXPCTL_STAT) & 0x7f;
			nphy->tx_pwr_idx[1] = FUNC9(dev,
						B43_NPHY_C2_TXPCTL_STAT) & 0x7f;
		}

		FUNC11(dev, B43_NPHY_TABLE_ADDR, 0x6840);
		for (i = 0; i < 84; i++)
			FUNC11(dev, B43_NPHY_TABLE_DATALO, 0);

		FUNC11(dev, B43_NPHY_TABLE_ADDR, 0x6C40);
		for (i = 0; i < 84; i++)
			FUNC11(dev, B43_NPHY_TABLE_DATALO, 0);

		tmp = B43_NPHY_TXPCTL_CMD_COEFF | B43_NPHY_TXPCTL_CMD_HWPCTLEN;
		if (dev->phy.rev >= 3)
			tmp |= B43_NPHY_TXPCTL_CMD_PCTLEN;
		FUNC7(dev, B43_NPHY_TXPCTL_CMD, ~tmp);

		if (dev->phy.rev >= 3) {
			FUNC10(dev, B43_NPHY_AFECTL_OVER1, 0x0100);
			FUNC10(dev, B43_NPHY_AFECTL_OVER, 0x0100);
		} else {
			FUNC10(dev, B43_NPHY_AFECTL_OVER, 0x4000);
		}

		if (dev->phy.rev == 2)
			FUNC8(dev, B43_NPHY_BPHY_CTL3,
				~B43_NPHY_BPHY_CTL3_SCALE, 0x53);
		else if (dev->phy.rev < 2)
			FUNC8(dev, B43_NPHY_BPHY_CTL3,
				~B43_NPHY_BPHY_CTL3_SCALE, 0x5A);

		if (dev->phy.rev < 2 && dev->phy.is_40mhz)
			FUNC3(dev, FUNC2(dev) | B43_HF_TSSIRPSMW);
	} else {
		FUNC6(dev, FUNC0(26, 64), 84,
				    nphy->adj_pwr_tbl);
		FUNC6(dev, FUNC0(27, 64), 84,
				    nphy->adj_pwr_tbl);

		bmask = B43_NPHY_TXPCTL_CMD_COEFF |
			B43_NPHY_TXPCTL_CMD_HWPCTLEN;
		/* wl does useless check for "enable" param here */
		val = B43_NPHY_TXPCTL_CMD_COEFF | B43_NPHY_TXPCTL_CMD_HWPCTLEN;
		if (dev->phy.rev >= 3) {
			bmask |= B43_NPHY_TXPCTL_CMD_PCTLEN;
			if (val)
				val |= B43_NPHY_TXPCTL_CMD_PCTLEN;
		}
		FUNC8(dev, B43_NPHY_TXPCTL_CMD, ~(bmask), val);

		if (band == IEEE80211_BAND_5GHZ) {
			FUNC8(dev, B43_NPHY_TXPCTL_CMD,
					~B43_NPHY_TXPCTL_CMD_INIT, 0x64);
			if (dev->phy.rev > 1)
				FUNC8(dev, B43_NPHY_TXPCTL_INIT,
						~B43_NPHY_TXPCTL_INIT_PIDXI1,
						0x64);
		}

		if (dev->phy.rev >= 3) {
			if (nphy->tx_pwr_idx[0] != 128 &&
			    nphy->tx_pwr_idx[1] != 128) {
				/* Recover TX pwr ctl state */
				FUNC8(dev, B43_NPHY_TXPCTL_CMD,
						~B43_NPHY_TXPCTL_CMD_INIT,
						nphy->tx_pwr_idx[0]);
				if (dev->phy.rev > 1)
					FUNC8(dev,
						B43_NPHY_TXPCTL_INIT,
						~0xff, nphy->tx_pwr_idx[1]);
			}
		}

		if (dev->phy.rev >= 3) {
			FUNC7(dev, B43_NPHY_AFECTL_OVER1, ~0x100);
			FUNC7(dev, B43_NPHY_AFECTL_OVER, ~0x100);
		} else {
			FUNC7(dev, B43_NPHY_AFECTL_OVER, ~0x4000);
		}

		if (dev->phy.rev == 2)
			FUNC8(dev, B43_NPHY_BPHY_CTL3, ~0xFF, 0x3b);
		else if (dev->phy.rev < 2)
			FUNC8(dev, B43_NPHY_BPHY_CTL3, ~0xFF, 0x40);

		if (dev->phy.rev < 2 && dev->phy.is_40mhz)
			FUNC3(dev, FUNC2(dev) & ~B43_HF_TSSIRPSMW);

		if (FUNC4(dev)) {
			FUNC7(dev, B43_NPHY_PAPD_EN0, ~0x4);
			FUNC7(dev, B43_NPHY_PAPD_EN1, ~0x4);
		}
	}

	if (nphy->hang_avoid)
		FUNC5(dev, 0);
}