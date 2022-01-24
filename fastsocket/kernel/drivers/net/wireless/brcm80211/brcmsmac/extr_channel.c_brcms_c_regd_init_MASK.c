#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int flags; int /*<<< orphan*/  reg_notifier; struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int /*<<< orphan*/  flags; int /*<<< orphan*/  hw_value; } ;
struct brcms_regd {int /*<<< orphan*/  regdomain; } ;
struct brcms_chanvec {int /*<<< orphan*/  vec; } ;
struct brcms_c_info {struct wiphy* wiphy; struct brcms_band** bandstate; TYPE_2__* pub; TYPE_1__* cmi; } ;
struct brcms_band {int /*<<< orphan*/  bandtype; int /*<<< orphan*/  pi; } ;
struct TYPE_4__ {int _nbands; } ;
struct TYPE_3__ {struct brcms_regd* world_regd; } ;

/* Variables and functions */
 int BAND_2G_INDEX ; 
 size_t IEEE80211_BAND_2GHZ ; 
 size_t IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  IEEE80211_CHAN_DISABLED ; 
 int /*<<< orphan*/  NL80211_REGDOM_SET_BY_DRIVER ; 
 int WIPHY_FLAG_CUSTOM_REGULATORY ; 
 int WIPHY_FLAG_STRICT_REGULATORY ; 
 int /*<<< orphan*/  FUNC0 (struct wiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcms_reg_notifier ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct brcms_chanvec*) ; 

void FUNC4(struct brcms_c_info *wlc)
{
	struct wiphy *wiphy = wlc->wiphy;
	const struct brcms_regd *regd = wlc->cmi->world_regd;
	struct ieee80211_supported_band *sband;
	struct ieee80211_channel *ch;
	struct brcms_chanvec sup_chan;
	struct brcms_band *band;
	int band_idx, i;

	/* Disable any channels not supported by the phy */
	for (band_idx = 0; band_idx < wlc->pub->_nbands; band_idx++) {
		band = wlc->bandstate[band_idx];

		FUNC3(band->pi, band->bandtype,
					      &sup_chan);

		if (band_idx == BAND_2G_INDEX)
			sband = wiphy->bands[IEEE80211_BAND_2GHZ];
		else
			sband = wiphy->bands[IEEE80211_BAND_5GHZ];

		for (i = 0; i < sband->n_channels; i++) {
			ch = &sband->channels[i];
			if (!FUNC1(sup_chan.vec, ch->hw_value))
				ch->flags |= IEEE80211_CHAN_DISABLED;
		}
	}

	wlc->wiphy->reg_notifier = brcms_reg_notifier;
	wlc->wiphy->flags |= WIPHY_FLAG_CUSTOM_REGULATORY |
			     WIPHY_FLAG_STRICT_REGULATORY;
	FUNC2(wlc->wiphy, regd->regdomain);
	FUNC0(wiphy, NL80211_REGDOM_SET_BY_DRIVER);
}