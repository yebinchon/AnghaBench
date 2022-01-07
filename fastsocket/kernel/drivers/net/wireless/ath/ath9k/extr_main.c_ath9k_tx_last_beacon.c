
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enable_beacon; } ;
struct ieee80211_vif {scalar_t__ drv_priv; TYPE_2__ bss_conf; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {struct ath_buf* av_bcbuf; } ;
struct ath_tx_status {int ts_status; } ;
struct TYPE_6__ {int tx_processed; int tx_last; struct ieee80211_vif** bslot; } ;
struct ath_softc {TYPE_3__ beacon; int bcon_tasklet; struct ath_hw* sc_ah; } ;
struct TYPE_4__ {int hw_caps; } ;
struct ath_hw {TYPE_1__ caps; } ;
struct ath_buf {int bf_desc; int bf_mpdu; } ;


 int ATH9K_HW_CAP_EDMA ;
 int ATH9K_TXERR_MASK ;
 int EINPROGRESS ;
 int ath9k_hw_txprocdesc (struct ath_hw*,int ,struct ath_tx_status*) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static int ath9k_tx_last_beacon(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ieee80211_vif *vif;
 struct ath_vif *avp;
 struct ath_buf *bf;
 struct ath_tx_status ts;
 bool edma = !!(ah->caps.hw_caps & ATH9K_HW_CAP_EDMA);
 int status;

 vif = sc->beacon.bslot[0];
 if (!vif)
  return 0;

 if (!vif->bss_conf.enable_beacon)
  return 0;

 avp = (void *)vif->drv_priv;

 if (!sc->beacon.tx_processed && !edma) {
  tasklet_disable(&sc->bcon_tasklet);

  bf = avp->av_bcbuf;
  if (!bf || !bf->bf_mpdu)
   goto skip;

  status = ath9k_hw_txprocdesc(ah, bf->bf_desc, &ts);
  if (status == -EINPROGRESS)
   goto skip;

  sc->beacon.tx_processed = 1;
  sc->beacon.tx_last = !(ts.ts_status & ATH9K_TXERR_MASK);

skip:
  tasklet_enable(&sc->bcon_tasklet);
 }

 return sc->beacon.tx_last;
}
