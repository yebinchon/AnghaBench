
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int rx_poll_timer; scalar_t__ hw_busy_count; int hw; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;


 int ath9k_debug_samp_bb_mac (struct ath_softc*) ;
 int ath9k_hw_disable_interrupts (struct ath_hw*) ;
 int ath_drain_all_txq (struct ath_softc*) ;
 int ath_stop_ani (struct ath_softc*) ;
 int ath_stoprecv (struct ath_softc*) ;
 int del_timer_sync (int *) ;
 int ieee80211_stop_queues (int ) ;

__attribute__((used)) static bool ath_prepare_reset(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 bool ret = 1;

 ieee80211_stop_queues(sc->hw);

 sc->hw_busy_count = 0;
 ath_stop_ani(sc);
 del_timer_sync(&sc->rx_poll_timer);

 ath9k_debug_samp_bb_mac(sc);
 ath9k_hw_disable_interrupts(ah);

 if (!ath_drain_all_txq(sc))
  ret = 0;

 if (!ath_stoprecv(sc))
  ret = 0;

 return ret;
}
