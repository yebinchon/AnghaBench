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
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {unsigned int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_reg_rule {int flags; } ;
struct ieee80211_channel {int flags; scalar_t__ beacon_found; int /*<<< orphan*/  center_freq; } ;
typedef  enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 int IEEE80211_CHAN_NO_IBSS ; 
 int IEEE80211_CHAN_PASSIVE_SCAN ; 
 int IEEE80211_CHAN_RADAR ; 
 int IEEE80211_NUM_BANDS ; 
 scalar_t__ FUNC0 (struct ieee80211_reg_rule const*) ; 
 int NL80211_REGDOM_SET_BY_COUNTRY_IE ; 
 int NL80211_RRF_NO_IBSS ; 
 int NL80211_RRF_PASSIVE_SCAN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ieee80211_reg_rule* FUNC2 (struct wiphy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct wiphy *wiphy,
			      enum nl80211_reg_initiator initiator)
{
	enum ieee80211_band band;
	struct ieee80211_supported_band *sband;
	const struct ieee80211_reg_rule *reg_rule;
	struct ieee80211_channel *ch;
	unsigned int i;

	for (band = 0; band < IEEE80211_NUM_BANDS; band++) {

		if (!wiphy->bands[band])
			continue;

		sband = wiphy->bands[band];

		for (i = 0; i < sband->n_channels; i++) {

			ch = &sband->channels[i];

			if (FUNC1(ch->center_freq) ||
			    (ch->flags & IEEE80211_CHAN_RADAR))
				continue;

			if (initiator == NL80211_REGDOM_SET_BY_COUNTRY_IE) {
				reg_rule = FUNC2(wiphy, ch->center_freq);
				if (FUNC0(reg_rule))
					continue;
				/*
				 * If 11d had a rule for this channel ensure
				 * we enable adhoc/beaconing if it allows us to
				 * use it. Note that we would have disabled it
				 * by applying our static world regdomain by
				 * default during init, prior to calling our
				 * regulatory_hint().
				 */
				if (!(reg_rule->flags &
				    NL80211_RRF_NO_IBSS))
					ch->flags &=
					  ~IEEE80211_CHAN_NO_IBSS;
				if (!(reg_rule->flags &
				    NL80211_RRF_PASSIVE_SCAN))
					ch->flags &=
					  ~IEEE80211_CHAN_PASSIVE_SCAN;
			} else {
				if (ch->beacon_found)
					ch->flags &= ~(IEEE80211_CHAN_NO_IBSS |
					  IEEE80211_CHAN_PASSIVE_SCAN);
			}
		}
	}

}