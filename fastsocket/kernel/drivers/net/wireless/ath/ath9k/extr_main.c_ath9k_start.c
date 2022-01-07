
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct ieee80211_hw {TYPE_2__ conf; struct ath_softc* priv; } ;
struct ieee80211_channel {int center_freq; } ;
struct ath_softc {int mutex; int sc_pcu_lock; struct ath_hw* sc_ah; int sc_flags; } ;
struct TYPE_6__ {int hw_caps; } ;
struct ath_hw {int reset_power_on; int imask; int is_monitoring; scalar_t__ led_pin; TYPE_3__ caps; int caldata; int intr_ref_cnt; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_GPIO_OUTPUT_MUX_AS_OUTPUT ;
 int ATH9K_HW_CAP_EDMA ;
 int ATH9K_HW_CAP_HT ;
 int ATH9K_INT_BB_WATCHDOG ;
 int ATH9K_INT_CST ;
 int ATH9K_INT_FATAL ;
 int ATH9K_INT_GLOBAL ;
 int ATH9K_INT_GTT ;
 int ATH9K_INT_RX ;
 int ATH9K_INT_RXEOL ;
 int ATH9K_INT_RXHP ;
 int ATH9K_INT_RXLP ;
 int ATH9K_INT_RXORN ;
 int ATH9K_INT_TX ;
 int CONFIG ;
 int SC_OP_INVALID ;
 struct ath9k_channel* ath9k_cmn_get_curchannel (struct ieee80211_hw*,struct ath_hw*) ;
 int ath9k_cmn_init_crypto (struct ath_hw*) ;
 int ath9k_hw_cfg_output (struct ath_hw*,scalar_t__,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_configpcipowersave (struct ath_hw*,int) ;
 int ath9k_hw_reset (struct ath_hw*,struct ath9k_channel*,int ,int) ;
 int ath9k_hw_set_gpio (struct ath_hw*,scalar_t__,int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_complete_reset (struct ath_softc*,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int ) ;
 int ath_err (struct ath_common*,char*,int,int ) ;
 int ath_mci_enable (struct ath_softc*) ;
 int atomic_set (int *,int) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath9k_start(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_channel *curchan = hw->conf.chandef.chan;
 struct ath9k_channel *init_channel;
 int r;

 ath_dbg(common, CONFIG,
  "Starting driver with initial channel: %d MHz\n",
  curchan->center_freq);

 ath9k_ps_wakeup(sc);
 mutex_lock(&sc->mutex);

 init_channel = ath9k_cmn_get_curchannel(hw, ah);


 ath9k_hw_configpcipowersave(ah, 0);
 spin_lock_bh(&sc->sc_pcu_lock);

 atomic_set(&ah->intr_ref_cnt, -1);

 r = ath9k_hw_reset(ah, init_channel, ah->caldata, 0);
 if (r) {
  ath_err(common,
   "Unable to reset hardware; reset status %d (freq %u MHz)\n",
   r, curchan->center_freq);
  ah->reset_power_on = 0;
 }


 ah->imask = ATH9K_INT_TX | ATH9K_INT_RXEOL |
      ATH9K_INT_RXORN | ATH9K_INT_FATAL |
      ATH9K_INT_GLOBAL;

 if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
  ah->imask |= ATH9K_INT_RXHP |
        ATH9K_INT_RXLP |
        ATH9K_INT_BB_WATCHDOG;
 else
  ah->imask |= ATH9K_INT_RX;

 ah->imask |= ATH9K_INT_GTT;

 if (ah->caps.hw_caps & ATH9K_HW_CAP_HT)
  ah->imask |= ATH9K_INT_CST;

 ath_mci_enable(sc);

 clear_bit(SC_OP_INVALID, &sc->sc_flags);
 sc->sc_ah->is_monitoring = 0;

 if (!ath_complete_reset(sc, 0))
  ah->reset_power_on = 0;

 if (ah->led_pin >= 0) {
  ath9k_hw_cfg_output(ah, ah->led_pin,
        AR_GPIO_OUTPUT_MUX_AS_OUTPUT);
  ath9k_hw_set_gpio(ah, ah->led_pin, 0);
 }





 ath9k_cmn_init_crypto(sc->sc_ah);

 spin_unlock_bh(&sc->sc_pcu_lock);

 mutex_unlock(&sc->mutex);

 ath9k_ps_restore(sc);

 return 0;
}
