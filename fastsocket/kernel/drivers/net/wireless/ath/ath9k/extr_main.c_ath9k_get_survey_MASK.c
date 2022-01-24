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
struct survey_info {struct ieee80211_channel* channel; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_hw {TYPE_1__* wiphy; struct ath_softc* priv; } ;
struct ieee80211_channel {int hw_value; } ;
struct ath_softc {int /*<<< orphan*/ * survey; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int /*<<< orphan*/  cc_lock; } ;
struct TYPE_2__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t IEEE80211_BAND_2GHZ ; 
 size_t IEEE80211_BAND_5GHZ ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct survey_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw, int idx,
			     struct survey_info *survey)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC0(sc->sc_ah);
	struct ieee80211_supported_band *sband;
	struct ieee80211_channel *chan;
	unsigned long flags;
	int pos;

	FUNC3(&common->cc_lock, flags);
	if (idx == 0)
		FUNC1(sc);

	sband = hw->wiphy->bands[IEEE80211_BAND_2GHZ];
	if (sband && idx >= sband->n_channels) {
		idx -= sband->n_channels;
		sband = NULL;
	}

	if (!sband)
		sband = hw->wiphy->bands[IEEE80211_BAND_5GHZ];

	if (!sband || idx >= sband->n_channels) {
		FUNC4(&common->cc_lock, flags);
		return -ENOENT;
	}

	chan = &sband->channels[idx];
	pos = chan->hw_value;
	FUNC2(survey, &sc->survey[pos], sizeof(*survey));
	survey->channel = chan;
	FUNC4(&common->cc_lock, flags);

	return 0;
}