
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * txq_max_pending; TYPE_2__** txq_map; } ;
struct TYPE_5__ {int cabqReadytime; } ;
struct TYPE_8__ {void* cabq; int beaconq; } ;
struct ath_softc {TYPE_3__ tx; TYPE_1__ config; TYPE_4__ beacon; int sc_ah; } ;
struct TYPE_6__ {int mac80211_qnum; } ;


 int ATH9K_TX_QUEUE_CAB ;
 int ATH9K_TX_QUEUE_DATA ;
 int ATH_CABQ_READY_TIME ;
 int ATH_MAX_QDEPTH ;
 int IEEE80211_NUM_ACS ;
 int ath9k_hw_beaconq_setup (int ) ;
 int ath_cabq_update (struct ath_softc*) ;
 void* ath_txq_setup (struct ath_softc*,int ,int) ;

__attribute__((used)) static int ath9k_init_queues(struct ath_softc *sc)
{
 int i = 0;

 sc->beacon.beaconq = ath9k_hw_beaconq_setup(sc->sc_ah);
 sc->beacon.cabq = ath_txq_setup(sc, ATH9K_TX_QUEUE_CAB, 0);

 sc->config.cabqReadytime = ATH_CABQ_READY_TIME;
 ath_cabq_update(sc);

 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  sc->tx.txq_map[i] = ath_txq_setup(sc, ATH9K_TX_QUEUE_DATA, i);
  sc->tx.txq_map[i]->mac80211_qnum = i;
  sc->tx.txq_max_pending[i] = ATH_MAX_QDEPTH;
 }
 return 0;
}
