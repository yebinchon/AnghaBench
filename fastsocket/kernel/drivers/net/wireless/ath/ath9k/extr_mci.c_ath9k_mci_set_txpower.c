
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int txpowlimit; } ;
struct ath9k_hw_cal_data {scalar_t__ chanmode; int channel; } ;
struct ath_softc {TYPE_2__ config; struct ath9k_hw_cal_data caldata; struct ath_hw* sc_ah; } ;
struct ath9k_hw_mci {int concur_tx; int config; } ;
struct TYPE_4__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_3__* curchan; TYPE_1__ btcoex_hw; } ;
struct TYPE_6__ {int channel; } ;


 int ATH_MCI_CONFIG_CONCUR_TX ;
 scalar_t__ CHANNEL_G_HT40MINUS ;
 scalar_t__ CHANNEL_G_HT40PLUS ;
 int IS_CHAN_2GHZ (TYPE_3__*) ;
 int ath9k_hw_set_txpowerlimit (struct ath_hw*,int ,int) ;

void ath9k_mci_set_txpower(struct ath_softc *sc, bool setchannel,
      bool concur_tx)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath9k_hw_mci *mci_hw = &sc->sc_ah->btcoex_hw.mci;
 bool old_concur_tx = mci_hw->concur_tx;

 if (!(mci_hw->config & ATH_MCI_CONFIG_CONCUR_TX)) {
  mci_hw->concur_tx = 0;
  return;
 }

 if (!IS_CHAN_2GHZ(ah->curchan))
  return;

 if (setchannel) {
  struct ath9k_hw_cal_data *caldata = &sc->caldata;
  if ((caldata->chanmode == CHANNEL_G_HT40PLUS) &&
      (ah->curchan->channel > caldata->channel) &&
      (ah->curchan->channel <= caldata->channel + 20))
   return;
  if ((caldata->chanmode == CHANNEL_G_HT40MINUS) &&
      (ah->curchan->channel < caldata->channel) &&
      (ah->curchan->channel >= caldata->channel - 20))
   return;
  mci_hw->concur_tx = 0;
 } else
  mci_hw->concur_tx = concur_tx;

 if (old_concur_tx != mci_hw->concur_tx)
  ath9k_hw_set_txpowerlimit(ah, sc->config.txpowlimit, 0);
}
