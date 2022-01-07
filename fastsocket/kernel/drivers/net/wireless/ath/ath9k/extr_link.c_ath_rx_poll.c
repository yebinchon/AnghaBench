
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int hw_check_work; int hw; int sc_flags; } ;


 int SC_OP_INVALID ;
 int ieee80211_queue_work (int ,int *) ;
 int test_bit (int ,int *) ;

void ath_rx_poll(unsigned long data)
{
 struct ath_softc *sc = (struct ath_softc *)data;

 if (!test_bit(SC_OP_INVALID, &sc->sc_flags))
  ieee80211_queue_work(sc->hw, &sc->hw_check_work);
}
