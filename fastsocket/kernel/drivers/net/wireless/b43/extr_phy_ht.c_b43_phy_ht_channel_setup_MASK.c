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
struct ieee80211_channel {scalar_t__ band; int hw_value; } ;
struct b43_wldev {int dummy; } ;
struct b43_phy_ht_channeltab_e_phy {int bw1; int bw2; int bw3; int bw4; int bw5; int bw6; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_PHY_HT_BANDCTL ; 
 int B43_PHY_HT_BW1 ; 
 int B43_PHY_HT_BW2 ; 
 int B43_PHY_HT_BW3 ; 
 int B43_PHY_HT_BW4 ; 
 int B43_PHY_HT_BW5 ; 
 int B43_PHY_HT_BW6 ; 
 int /*<<< orphan*/  B43_PHY_HT_CLASS_CTL_OFDM_EN ; 
 int /*<<< orphan*/  B43_PHY_HT_TEST ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev,
				const struct b43_phy_ht_channeltab_e_phy *e,
				struct ieee80211_channel *new_channel)
{
	bool old_band_5ghz;

	old_band_5ghz = FUNC4(dev, B43_PHY_HT_BANDCTL) & 0; /* FIXME */
	if (new_channel->band == IEEE80211_BAND_5GHZ && !old_band_5ghz) {
		/* TODO */
	} else if (new_channel->band == IEEE80211_BAND_2GHZ && old_band_5ghz) {
		/* TODO */
	}

	FUNC6(dev, B43_PHY_HT_BW1, e->bw1);
	FUNC6(dev, B43_PHY_HT_BW2, e->bw2);
	FUNC6(dev, B43_PHY_HT_BW3, e->bw3);
	FUNC6(dev, B43_PHY_HT_BW4, e->bw4);
	FUNC6(dev, B43_PHY_HT_BW5, e->bw5);
	FUNC6(dev, B43_PHY_HT_BW6, e->bw6);

	if (new_channel->hw_value == 14) {
		FUNC0(dev, B43_PHY_HT_CLASS_CTL_OFDM_EN, 0);
		FUNC5(dev, B43_PHY_HT_TEST, 0x0800);
	} else {
		FUNC0(dev, B43_PHY_HT_CLASS_CTL_OFDM_EN,
				      B43_PHY_HT_CLASS_CTL_OFDM_EN);
		if (new_channel->band == IEEE80211_BAND_2GHZ)
			FUNC3(dev, B43_PHY_HT_TEST, ~0x840);
	}

	if (1) /* TODO: On N it's for early devices only, what about HT? */
		FUNC2(dev);

	FUNC1(dev, new_channel);

	FUNC6(dev, 0x017e, 0x3830);
}