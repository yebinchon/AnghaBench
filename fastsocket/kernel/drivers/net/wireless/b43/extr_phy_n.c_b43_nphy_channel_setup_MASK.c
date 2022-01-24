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
typedef  int u32 ;
typedef  int u16 ;
struct ieee80211_channel {int hw_value; scalar_t__ band; } ;
struct b43_phy {int rev; int /*<<< orphan*/  channel_type; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; TYPE_1__* dev; } ;
struct b43_phy_n_sfo_cfg {int dummy; } ;
struct b43_phy_n {scalar_t__ spur_avoid; scalar_t__ aband_spurwar_en; int /*<<< orphan*/  txpwrctrl; } ;
struct TYPE_2__ {int chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_PSM_PHY_HDR ; 
 int /*<<< orphan*/  B43_MMIO_TSF_CLK_FRAC_HIGH ; 
 int /*<<< orphan*/  B43_MMIO_TSF_CLK_FRAC_LOW ; 
 int /*<<< orphan*/  B43_NPHY_BANDCTL ; 
 int B43_NPHY_BANDCTL_5GHZ ; 
 int /*<<< orphan*/  B43_NPHY_BBCFG ; 
 int B43_NPHY_BBCFG_RSTRX ; 
 int /*<<< orphan*/  B43_NPHY_NDATAT_DUP40 ; 
 int /*<<< orphan*/  B43_PHY_B_BBCFG ; 
 int /*<<< orphan*/  B43_PHY_B_TEST ; 
 scalar_t__ B43_SPUR_AVOID_DISABLE ; 
 scalar_t__ B43_SPUR_AVOID_FORCE ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,struct b43_phy_n_sfo_cfg const*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(struct b43_wldev *dev,
				const struct b43_phy_n_sfo_cfg *e,
				struct ieee80211_channel *new_channel)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = dev->phy.n;
	int ch = new_channel->hw_value;

	u16 old_band_5ghz;
	u32 tmp32;

	old_band_5ghz =
		FUNC10(dev, B43_NPHY_BANDCTL) & B43_NPHY_BANDCTL_5GHZ;
	if (new_channel->band == IEEE80211_BAND_5GHZ && !old_band_5ghz) {
		tmp32 = FUNC13(dev, B43_MMIO_PSM_PHY_HDR);
		FUNC15(dev, B43_MMIO_PSM_PHY_HDR, tmp32 | 4);
		FUNC11(dev, B43_PHY_B_BBCFG, 0xC000);
		FUNC15(dev, B43_MMIO_PSM_PHY_HDR, tmp32);
		FUNC11(dev, B43_NPHY_BANDCTL, B43_NPHY_BANDCTL_5GHZ);
	} else if (new_channel->band == IEEE80211_BAND_2GHZ && old_band_5ghz) {
		FUNC9(dev, B43_NPHY_BANDCTL, ~B43_NPHY_BANDCTL_5GHZ);
		tmp32 = FUNC13(dev, B43_MMIO_PSM_PHY_HDR);
		FUNC15(dev, B43_MMIO_PSM_PHY_HDR, tmp32 | 4);
		FUNC9(dev, B43_PHY_B_BBCFG, 0x3FFF);
		FUNC15(dev, B43_MMIO_PSM_PHY_HDR, tmp32);
	}

	FUNC1(dev, e);

	if (new_channel->hw_value == 14) {
		FUNC3(dev, 2, 0);
		FUNC11(dev, B43_PHY_B_TEST, 0x0800);
	} else {
		FUNC3(dev, 2, 2);
		if (new_channel->band == IEEE80211_BAND_2GHZ)
			FUNC9(dev, B43_PHY_B_TEST, ~0x840);
	}

	if (!nphy->txpwrctrl)
		FUNC8(dev);

	if (dev->phy.rev < 3)
		FUNC2(dev);

	FUNC7(dev);

	if (dev->phy.rev >= 3 &&
	    dev->phy.n->spur_avoid != B43_SPUR_AVOID_DISABLE) {
		bool avoid = false;
		if (dev->phy.n->spur_avoid == B43_SPUR_AVOID_FORCE) {
			avoid = true;
		} else if (!FUNC0(phy->channel_type)) {
			if ((ch >= 5 && ch <= 8) || ch == 13 || ch == 14)
				avoid = true;
		} else { /* 40MHz */
			if (nphy->aband_spurwar_en &&
			    (ch == 38 || ch == 102 || ch == 118))
				avoid = dev->dev->chip_id == 0x4716;
		}

		FUNC4(dev, avoid);

		if (dev->dev->chip_id == 43222 || dev->dev->chip_id == 43224 ||
		    dev->dev->chip_id == 43225) {
			FUNC14(dev, B43_MMIO_TSF_CLK_FRAC_LOW,
				    avoid ? 0x5341 : 0x8889);
			FUNC14(dev, B43_MMIO_TSF_CLK_FRAC_HIGH, 0x8);
		}

		if (dev->phy.rev == 3 || dev->phy.rev == 4)
			; /* TODO: reset PLL */

		if (avoid)
			FUNC11(dev, B43_NPHY_BBCFG, B43_NPHY_BBCFG_RSTRX);
		else
			FUNC9(dev, B43_NPHY_BBCFG,
				     ~B43_NPHY_BBCFG_RSTRX & 0xFFFF);

		FUNC5(dev);

		/* wl sets useless phy_isspuravoid here */
	}

	FUNC12(dev, B43_NPHY_NDATAT_DUP40, 0x3830);

	if (phy->rev >= 3)
		FUNC6(dev);
}