#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct survey_info {int dummy; } ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {int flags; int power_level; scalar_t__ radar_enabled; TYPE_3__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath_softc* priv; } ;
struct ieee80211_channel {int hw_value; int center_freq; } ;
struct TYPE_4__ {int txpowlimit; } ;
struct ath_softc {int ps_idle; scalar_t__ spectral_mode; int /*<<< orphan*/  mutex; int /*<<< orphan*/  curtxpow; TYPE_1__ config; scalar_t__ scanning; struct ath_hw* sc_ah; TYPE_2__* survey; TYPE_2__* cur_survey; int /*<<< orphan*/  sc_pm_lock; } ;
struct ath_hw {int chip_fullsleep; int is_monitoring; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * curchan; } ;
struct ath_common {int /*<<< orphan*/  cc_lock; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
struct TYPE_5__ {int filled; } ;

/* Variables and functions */
 int ATH9K_RX_FILTER_PHYERR ; 
 int ATH9K_RX_FILTER_PHYRADAR ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  DFS ; 
 int EINVAL ; 
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_IDLE ; 
 int IEEE80211_CONF_CHANGE_MONITOR ; 
 int IEEE80211_CONF_CHANGE_POWER ; 
 int IEEE80211_CONF_CHANGE_PS ; 
 int IEEE80211_CONF_IDLE ; 
 int IEEE80211_CONF_MONITOR ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int IEEE80211_CONF_PS ; 
 scalar_t__ SPECTRAL_CHANSCAN ; 
 int SURVEY_INFO_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ieee80211_channel*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_common*,char*) ; 
 scalar_t__ FUNC16 (struct ath_softc*,struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_softc*) ; 
 int FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC25(struct ieee80211_hw *hw, u32 changed)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC4(ah);
	struct ieee80211_conf *conf = &hw->conf;
	bool reset_channel = false;

	FUNC9(sc);
	FUNC21(&sc->mutex);

	if (changed & IEEE80211_CONF_CHANGE_IDLE) {
		sc->ps_idle = !!(conf->flags & IEEE80211_CONF_IDLE);
		if (sc->ps_idle) {
			FUNC13(sc);
			FUNC12(sc);
		} else {
			FUNC11(sc);
			/*
			 * The chip needs a reset to properly wake up from
			 * full sleep
			 */
			reset_channel = ah->chip_fullsleep;
		}
	}

	/*
	 * We just prepare to enable PS. We have to wait until our AP has
	 * ACK'd our null data frame to disable RX otherwise we'll ignore
	 * those ACKs and end up retransmitting the same null data frames.
	 * IEEE80211_CONF_CHANGE_PS is only passed by mac80211 for STA mode.
	 */
	if (changed & IEEE80211_CONF_CHANGE_PS) {
		unsigned long flags;
		FUNC23(&sc->sc_pm_lock, flags);
		if (conf->flags & IEEE80211_CONF_PS)
			FUNC3(sc);
		else
			FUNC2(sc);
		FUNC24(&sc->sc_pm_lock, flags);
	}

	if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
		if (conf->flags & IEEE80211_CONF_MONITOR) {
			FUNC14(common, CONFIG, "Monitor mode is enabled\n");
			sc->sc_ah->is_monitoring = true;
		} else {
			FUNC14(common, CONFIG, "Monitor mode is disabled\n");
			sc->sc_ah->is_monitoring = false;
		}
	}

	if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) || reset_channel) {
		struct ieee80211_channel *curchan = hw->conf.chandef.chan;
		enum nl80211_channel_type channel_type =
			FUNC19(&conf->chandef);
		int pos = curchan->hw_value;
		int old_pos = -1;
		unsigned long flags;

		if (ah->curchan)
			old_pos = ah->curchan - &ah->channels[0];

		FUNC14(common, CONFIG, "Set channel: %d MHz type: %d\n",
			curchan->center_freq, channel_type);

		/* update survey stats for the old channel before switching */
		FUNC23(&common->cc_lock, flags);
		FUNC18(sc);
		FUNC24(&common->cc_lock, flags);

		FUNC0(&sc->sc_ah->channels[pos],
					  curchan, channel_type);

		/*
		 * If the operating channel changes, change the survey in-use flags
		 * along with it.
		 * Reset the survey data for the new channel, unless we're switching
		 * back to the operating channel from an off-channel operation.
		 */
		if (!(hw->conf.flags & IEEE80211_CONF_OFFCHANNEL) &&
		    sc->cur_survey != &sc->survey[pos]) {

			if (sc->cur_survey)
				sc->cur_survey->filled &= ~SURVEY_INFO_IN_USE;

			sc->cur_survey = &sc->survey[pos];

			FUNC20(sc->cur_survey, 0, sizeof(struct survey_info));
			sc->cur_survey->filled |= SURVEY_INFO_IN_USE;
		} else if (!(sc->survey[pos].filled & SURVEY_INFO_IN_USE)) {
			FUNC20(&sc->survey[pos], 0, sizeof(struct survey_info));
		}

		if (FUNC16(sc, hw, &sc->sc_ah->channels[pos]) < 0) {
			FUNC15(common, "Unable to set channel\n");
			FUNC22(&sc->mutex);
			FUNC8(sc);
			return -EINVAL;
		}

		/*
		 * The most recent snapshot of channel->noisefloor for the old
		 * channel is only available after the hardware reset. Copy it to
		 * the survey stats now.
		 */
		if (old_pos >= 0)
			FUNC17(sc, old_pos);

		/*
		 * Enable radar pulse detection if on a DFS channel. Spectral
		 * scanning and radar detection can not be used concurrently.
		 */
		if (hw->conf.radar_enabled) {
			u32 rxfilter;

			/* set HW specific DFS configuration */
			FUNC6(ah);
			rxfilter = FUNC5(ah);
			rxfilter |= ATH9K_RX_FILTER_PHYRADAR |
				    ATH9K_RX_FILTER_PHYERR;
			FUNC7(ah, rxfilter);
			FUNC14(common, DFS, "DFS enabled at freq %d\n",
				curchan->center_freq);
		} else {
			/* perform spectral scan if requested. */
			if (sc->scanning &&
			    sc->spectral_mode == SPECTRAL_CHANSCAN)
				FUNC10(hw);
		}
	}

	if (changed & IEEE80211_CONF_CHANGE_POWER) {
		FUNC14(common, CONFIG, "Set power: %d\n", conf->power_level);
		sc->config.txpowlimit = 2 * conf->power_level;
		FUNC1(ah, sc->curtxpow,
				       sc->config.txpowlimit, &sc->curtxpow);
	}

	FUNC22(&sc->mutex);
	FUNC8(sc);

	return 0;
}