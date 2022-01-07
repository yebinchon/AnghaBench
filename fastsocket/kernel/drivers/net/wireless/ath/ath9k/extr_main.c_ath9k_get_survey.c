
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct survey_info {struct ieee80211_channel* channel; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_hw {TYPE_1__* wiphy; struct ath_softc* priv; } ;
struct ieee80211_channel {int hw_value; } ;
struct ath_softc {int * survey; int sc_ah; } ;
struct ath_common {int cc_lock; } ;
struct TYPE_2__ {struct ieee80211_supported_band** bands; } ;


 int ENOENT ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_update_survey_stats (struct ath_softc*) ;
 int memcpy (struct survey_info*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ath9k_get_survey(struct ieee80211_hw *hw, int idx,
        struct survey_info *survey)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *chan;
 unsigned long flags;
 int pos;

 spin_lock_irqsave(&common->cc_lock, flags);
 if (idx == 0)
  ath_update_survey_stats(sc);

 sband = hw->wiphy->bands[IEEE80211_BAND_2GHZ];
 if (sband && idx >= sband->n_channels) {
  idx -= sband->n_channels;
  sband = ((void*)0);
 }

 if (!sband)
  sband = hw->wiphy->bands[IEEE80211_BAND_5GHZ];

 if (!sband || idx >= sband->n_channels) {
  spin_unlock_irqrestore(&common->cc_lock, flags);
  return -ENOENT;
 }

 chan = &sband->channels[idx];
 pos = chan->hw_value;
 memcpy(survey, &sc->survey[pos], sizeof(*survey));
 survey->channel = chan;
 spin_unlock_irqrestore(&common->cc_lock, flags);

 return 0;
}
