
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enable_beacon; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
struct TYPE_6__ {int bmisscnt; scalar_t__ updateslot; int slotupdate; int beaconq; int slottime; struct ieee80211_vif** bslot; } ;
struct ath_softc {int nbcnvifs; TYPE_3__ beacon; int hw; int hw_check_work; int sc_flags; struct ath_hw* sc_ah; } ;
struct TYPE_4__ {int hw_caps; } ;
struct ath_hw {int slottime; TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;
struct ath_buf {int bf_daddr; } ;


 int ATH9K_HW_CAP_EDMA ;
 int BEACON ;
 int BSTUCK ;
 int BSTUCK_THRESH ;
 scalar_t__ COMMIT ;
 scalar_t__ OK ;
 int RESET ;
 int RESET_TYPE_BEACON_STUCK ;
 int SC_OP_HW_RESET ;
 scalar_t__ UPDATE ;
 int ath9k_beacon_choose_slot (struct ath_softc*) ;
 struct ath_buf* ath9k_beacon_generate (int ,struct ieee80211_vif*) ;
 int ath9k_hw_bstuck_nfcal (struct ath_hw*) ;
 int ath9k_hw_check_alive (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_init_global_settings (struct ath_hw*) ;
 scalar_t__ ath9k_hw_numtxpending (struct ath_hw*,int ) ;
 int ath9k_hw_puttxbuf (struct ath_hw*,int ,int ) ;
 int ath9k_hw_stop_dma_queue (struct ath_hw*,int ) ;
 int ath9k_hw_txstart (struct ath_hw*,int ) ;
 int ath9k_queue_reset (struct ath_softc*,int ) ;
 int ath9k_reset_beacon_status (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ieee80211_queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void ath9k_beacon_tasklet(unsigned long data)
{
 struct ath_softc *sc = (struct ath_softc *)data;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_buf *bf = ((void*)0);
 struct ieee80211_vif *vif;
 bool edma = !!(ah->caps.hw_caps & ATH9K_HW_CAP_EDMA);
 int slot;

 if (test_bit(SC_OP_HW_RESET, &sc->sc_flags)) {
  ath_dbg(common, RESET,
   "reset work is pending, skip beaconing now\n");
  return;
 }
 if (ath9k_hw_numtxpending(ah, sc->beacon.beaconq) != 0) {
  sc->beacon.bmisscnt++;

  if (!ath9k_hw_check_alive(ah))
   ieee80211_queue_work(sc->hw, &sc->hw_check_work);

  if (sc->beacon.bmisscnt < BSTUCK_THRESH * sc->nbcnvifs) {
   ath_dbg(common, BSTUCK,
    "missed %u consecutive beacons\n",
    sc->beacon.bmisscnt);
   ath9k_hw_stop_dma_queue(ah, sc->beacon.beaconq);
   if (sc->beacon.bmisscnt > 3)
    ath9k_hw_bstuck_nfcal(ah);
  } else if (sc->beacon.bmisscnt >= BSTUCK_THRESH) {
   ath_dbg(common, BSTUCK, "beacon is officially stuck\n");
   sc->beacon.bmisscnt = 0;
   ath9k_queue_reset(sc, RESET_TYPE_BEACON_STUCK);
  }

  return;
 }

 slot = ath9k_beacon_choose_slot(sc);
 vif = sc->beacon.bslot[slot];

 if (!vif || !vif->bss_conf.enable_beacon)
  return;

 bf = ath9k_beacon_generate(sc->hw, vif);

 if (sc->beacon.bmisscnt != 0) {
  ath_dbg(common, BSTUCK, "resume beacon xmit after %u misses\n",
   sc->beacon.bmisscnt);
  sc->beacon.bmisscnt = 0;
 }
 if (sc->beacon.updateslot == UPDATE) {
  sc->beacon.updateslot = COMMIT;
  sc->beacon.slotupdate = slot;
 } else if (sc->beacon.updateslot == COMMIT &&
     sc->beacon.slotupdate == slot) {
  ah->slottime = sc->beacon.slottime;
  ath9k_hw_init_global_settings(ah);
  sc->beacon.updateslot = OK;
 }

 if (bf) {
  ath9k_reset_beacon_status(sc);

  ath_dbg(common, BEACON,
   "Transmitting beacon for slot: %d\n", slot);


  ath9k_hw_puttxbuf(ah, sc->beacon.beaconq, bf->bf_daddr);

  if (!edma)
   ath9k_hw_txstart(ah, sc->beacon.beaconq);
 }
}
