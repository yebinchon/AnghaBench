
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * txq; } ;
struct ath_softc {TYPE_2__* dfs_detector; int sc_ah; TYPE_1__ tx; } ;
struct TYPE_4__ {int (* exit ) (TYPE_2__*) ;} ;


 int ATH9K_NUM_TX_QUEUES ;
 scalar_t__ ATH_TXQ_SETUP (struct ath_softc*,int) ;
 int ath9k_deinit_btcoex (struct ath_softc*) ;
 int ath9k_eeprom_release (struct ath_softc*) ;
 int ath9k_hw_deinit (int ) ;
 int ath_tx_cleanupq (struct ath_softc*,int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void ath9k_deinit_softc(struct ath_softc *sc)
{
 int i = 0;

 ath9k_deinit_btcoex(sc);

 for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++)
  if (ATH_TXQ_SETUP(sc, i))
   ath_tx_cleanupq(sc, &sc->tx.txq[i]);

 ath9k_hw_deinit(sc->sc_ah);
 if (sc->dfs_detector != ((void*)0))
  sc->dfs_detector->exit(sc->dfs_detector);

 ath9k_eeprom_release(sc);
}
