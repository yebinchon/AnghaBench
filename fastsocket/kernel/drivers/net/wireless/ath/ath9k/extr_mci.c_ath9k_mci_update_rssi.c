
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_btcoex {int rssi_count; } ;
struct ath_softc {struct ath_hw* sc_ah; struct ath_btcoex btcoex; } ;
struct TYPE_4__ {int avgbrssi; } ;
struct ath9k_hw_mci {int config; } ;
struct TYPE_3__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_2__ stats; TYPE_1__ btcoex_hw; } ;


 int ATH_MCI_CONCUR_TX_SWITCH ;
 int ATH_MCI_CONFIG_CONCUR_TX ;
 int ath9k_mci_set_txpower (struct ath_softc*,int,int) ;
 int ath9k_mci_stomp_audio (struct ath_softc*) ;

void ath9k_mci_update_rssi(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_btcoex *btcoex = &sc->btcoex;
 struct ath9k_hw_mci *mci_hw = &sc->sc_ah->btcoex_hw.mci;

 ath9k_mci_stomp_audio(sc);

 if (!(mci_hw->config & ATH_MCI_CONFIG_CONCUR_TX))
  return;

 if (ah->stats.avgbrssi >= 40) {
  if (btcoex->rssi_count < 0)
   btcoex->rssi_count = 0;
  if (++btcoex->rssi_count >= ATH_MCI_CONCUR_TX_SWITCH) {
   btcoex->rssi_count = 0;
   ath9k_mci_set_txpower(sc, 0, 1);
  }
 } else {
  if (btcoex->rssi_count > 0)
   btcoex->rssi_count = 0;
  if (--btcoex->rssi_count <= -ATH_MCI_CONCUR_TX_SWITCH) {
   btcoex->rssi_count = 0;
   ath9k_mci_set_txpower(sc, 0, 0);
  }
 }
}
