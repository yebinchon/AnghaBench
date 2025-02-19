
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {size_t hw_value; } ;
struct ath_softc {struct ieee80211_supported_band* sbands; struct ath_hw* sc_ah; } ;
struct ath_hw {int * curchan; int * channels; } ;


 int MAX_RATE_POWER ;
 int NL80211_CHAN_HT20 ;
 int ath9k_cmn_update_ichannel (int *,struct ieee80211_channel*,int ) ;
 int ath9k_hw_set_txpowerlimit (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ath9k_init_band_txpower(struct ath_softc *sc, int band)
{
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *chan;
 struct ath_hw *ah = sc->sc_ah;
 int i;

 sband = &sc->sbands[band];
 for (i = 0; i < sband->n_channels; i++) {
  chan = &sband->channels[i];
  ah->curchan = &ah->channels[chan->hw_value];
  ath9k_cmn_update_ichannel(ah->curchan, chan, NL80211_CHAN_HT20);
  ath9k_hw_set_txpowerlimit(ah, MAX_RATE_POWER, 1);
 }
}
