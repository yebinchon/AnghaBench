
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int dummy; } ;


 int ath9k_del_ps_key (struct ath_softc*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int ath_node_detach (struct ath_softc*,struct ieee80211_sta*) ;

__attribute__((used)) static int ath9k_sta_remove(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_sta *sta)
{
 struct ath_softc *sc = hw->priv;

 ath9k_del_ps_key(sc, vif, sta);
 ath_node_detach(sc, sta);

 return 0;
}
