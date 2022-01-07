
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ampdu_factor; int ampdu_density; scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int maxampdu; int mpdudensity; struct ieee80211_vif* vif; struct ieee80211_sta* sta; struct ath_softc* sc; } ;


 int IEEE80211_HT_MAX_AMPDU_FACTOR ;
 int ath9k_parse_mpdudensity (int ) ;
 int ath_tx_node_init (struct ath_softc*,struct ath_node*) ;

__attribute__((used)) static void ath_node_attach(struct ath_softc *sc, struct ieee80211_sta *sta,
       struct ieee80211_vif *vif)
{
 struct ath_node *an;
 an = (struct ath_node *)sta->drv_priv;

 an->sc = sc;
 an->sta = sta;
 an->vif = vif;

 ath_tx_node_init(sc, an);

 if (sta->ht_cap.ht_supported) {
  an->maxampdu = 1 << (IEEE80211_HT_MAX_AMPDU_FACTOR +
         sta->ht_cap.ampdu_factor);
  an->mpdudensity = ath9k_parse_mpdudensity(sta->ht_cap.ampdu_density);
 }
}
