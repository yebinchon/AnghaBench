
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_beacon_config {int enable_beacon; } ;
struct ath_softc {int sc_flags; struct ath_beacon_config cur_beacon_conf; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ opmode; } ;


 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SC_OP_ANI_RUN ;
 int SC_OP_PRIM_STA_VIF ;
 int ath_start_ani (struct ath_softc*) ;
 int ath_stop_ani (struct ath_softc*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void ath_check_ani(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_beacon_config *cur_conf = &sc->cur_beacon_conf;





 if (ah->opmode == NL80211_IFTYPE_ADHOC) {
  if (!cur_conf->enable_beacon)
   goto stop_ani;
 } else if (ah->opmode == NL80211_IFTYPE_AP) {
  if (!cur_conf->enable_beacon) {




   if (!test_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags))
    goto stop_ani;
  }
 } else if (ah->opmode == NL80211_IFTYPE_STATION) {
  if (!test_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags))
   goto stop_ani;
 }

 if (!test_bit(SC_OP_ANI_RUN, &sc->sc_flags)) {
  set_bit(SC_OP_ANI_RUN, &sc->sc_flags);
  ath_start_ani(sc);
 }

 return;

stop_ani:
 clear_bit(SC_OP_ANI_RUN, &sc->sc_flags);
 ath_stop_ani(sc);
}
