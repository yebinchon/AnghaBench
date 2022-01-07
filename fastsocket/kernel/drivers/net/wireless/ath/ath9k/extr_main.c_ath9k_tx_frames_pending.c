
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {struct ath_softc* priv; } ;
struct TYPE_2__ {int * txq; } ;
struct ath_softc {TYPE_1__ tx; } ;


 int ATH9K_NUM_TX_QUEUES ;
 int ATH_TXQ_SETUP (struct ath_softc*,int) ;
 scalar_t__ ath9k_has_pending_frames (struct ath_softc*,int *) ;

__attribute__((used)) static bool ath9k_tx_frames_pending(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;
 int i;

 for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++) {
  if (!ATH_TXQ_SETUP(sc, i))
   continue;

  if (ath9k_has_pending_frames(sc, &sc->tx.txq[i]))
   return 1;
 }
 return 0;
}
