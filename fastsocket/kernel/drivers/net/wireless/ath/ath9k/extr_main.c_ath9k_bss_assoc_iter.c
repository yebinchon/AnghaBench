
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_bss_conf {scalar_t__ assoc; } ;
struct ieee80211_vif {struct ieee80211_bss_conf bss_conf; } ;
struct ath_softc {int sc_flags; } ;


 int SC_OP_PRIM_STA_VIF ;
 int ath9k_set_assoc_state (struct ath_softc*,struct ieee80211_vif*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_bss_assoc_iter(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 struct ath_softc *sc = data;
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;

 if (test_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags))
  return;

 if (bss_conf->assoc)
  ath9k_set_assoc_state(sc, vif);
}
