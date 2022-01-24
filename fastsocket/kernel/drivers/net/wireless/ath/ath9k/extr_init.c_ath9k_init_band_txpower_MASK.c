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
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {size_t hw_value; } ;
struct ath_softc {struct ieee80211_supported_band* sbands; struct ath_hw* sc_ah; } ;
struct ath_hw {int /*<<< orphan*/ * curchan; int /*<<< orphan*/ * channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_RATE_POWER ; 
 int /*<<< orphan*/  NL80211_CHAN_HT20 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ath_softc *sc, int band)
{
	struct ieee80211_supported_band *sband;
	struct ieee80211_channel *chan;
	struct ath_hw *ah = sc->sc_ah;
	int i;

	sband = &sc->sbands[band];
	for (i = 0; i < sband->n_channels; i++) {
		chan = &sband->channels[i];
		ah->curchan = &ah->channels[chan->hw_value];
		FUNC0(ah->curchan, chan, NL80211_CHAN_HT20);
		FUNC1(ah, MAX_RATE_POWER, true);
	}
}