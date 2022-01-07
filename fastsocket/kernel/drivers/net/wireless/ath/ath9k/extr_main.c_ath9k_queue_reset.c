
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int hw_reset_work; int hw; int sc_flags; } ;
typedef enum ath_reset_type { ____Placeholder_ath_reset_type } ath_reset_type ;


 int RESET_STAT_INC (struct ath_softc*,int) ;
 int SC_OP_HW_RESET ;
 int ieee80211_queue_work (int ,int *) ;
 int set_bit (int ,int *) ;

void ath9k_queue_reset(struct ath_softc *sc, enum ath_reset_type type)
{



 set_bit(SC_OP_HW_RESET, &sc->sc_flags);
 ieee80211_queue_work(sc->hw, &sc->hw_reset_work);
}
