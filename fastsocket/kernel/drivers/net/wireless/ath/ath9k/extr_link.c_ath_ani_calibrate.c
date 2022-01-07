
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct ath_softc {int paprd_work; int hw; struct ath_hw* sc_ah; int sc_pm_lock; int ps_flags; } ;
struct TYPE_4__ {unsigned int ani_poll_interval; scalar_t__ enable_ani; } ;
struct ath_hw {scalar_t__ opmode; scalar_t__ power_mode; scalar_t__ ani_skip_count; int paprd_table_write_done; TYPE_3__* caldata; TYPE_1__ config; int rxchainmask; int curchan; } ;
struct TYPE_5__ {unsigned int longcal_timer; unsigned int shortcal_timer; unsigned int resetcal_timer; unsigned int checkani_timer; int timer; scalar_t__ caldone; } ;
struct ath_common {TYPE_2__ ani; int cc_lock; } ;
struct TYPE_6__ {int paprd_done; scalar_t__ nfcal_interference; } ;


 int ANI ;
 scalar_t__ ATH9K_PM_AWAKE ;
 scalar_t__ ATH_ANI_MAX_SKIP_COUNT ;
 unsigned int ATH_AP_SHORT_CALINTERVAL ;
 unsigned int ATH_LONG_CALINTERVAL ;
 unsigned int ATH_LONG_CALINTERVAL_INT ;
 unsigned int ATH_RESTART_CALINTERVAL ;
 unsigned int ATH_STA_SHORT_CALINTERVAL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int PS_WAIT_FOR_ANI ;
 scalar_t__ ar9003_is_paprd_enabled (struct ath_hw*) ;
 int ath9k_debug_samp_bb_mac (struct ath_softc*) ;
 int ath9k_hw_ani_monitor (struct ath_hw*,int ) ;
 scalar_t__ ath9k_hw_calibrate (struct ath_hw*,int ,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ ath9k_hw_reset_calvalid (struct ath_hw*) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*,scalar_t__,char*,char*,char*,char*) ;
 int ath_paprd_activate (struct ath_softc*) ;
 int ath_update_survey_stats (struct ath_softc*) ;
 int ieee80211_queue_work (int ,int *) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 unsigned int min (unsigned int,unsigned int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath_ani_calibrate(unsigned long data)
{
 struct ath_softc *sc = (struct ath_softc *)data;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 bool longcal = 0;
 bool shortcal = 0;
 bool aniflag = 0;
 unsigned int timestamp = jiffies_to_msecs(jiffies);
 u32 cal_interval, short_cal_interval, long_cal_interval;
 unsigned long flags;

 if (ah->caldata && ah->caldata->nfcal_interference)
  long_cal_interval = ATH_LONG_CALINTERVAL_INT;
 else
  long_cal_interval = ATH_LONG_CALINTERVAL;

 short_cal_interval = (ah->opmode == NL80211_IFTYPE_AP) ?
  ATH_AP_SHORT_CALINTERVAL : ATH_STA_SHORT_CALINTERVAL;


 if (sc->sc_ah->power_mode != ATH9K_PM_AWAKE) {
  if (++ah->ani_skip_count >= ATH_ANI_MAX_SKIP_COUNT) {
   spin_lock_irqsave(&sc->sc_pm_lock, flags);
   sc->ps_flags |= PS_WAIT_FOR_ANI;
   spin_unlock_irqrestore(&sc->sc_pm_lock, flags);
  }
  goto set_timer;
 }
 ah->ani_skip_count = 0;
 spin_lock_irqsave(&sc->sc_pm_lock, flags);
 sc->ps_flags &= ~PS_WAIT_FOR_ANI;
 spin_unlock_irqrestore(&sc->sc_pm_lock, flags);

 ath9k_ps_wakeup(sc);


 if ((timestamp - common->ani.longcal_timer) >= long_cal_interval) {
  longcal = 1;
  common->ani.longcal_timer = timestamp;
 }


 if (!common->ani.caldone) {
  if ((timestamp - common->ani.shortcal_timer) >= short_cal_interval) {
   shortcal = 1;
   common->ani.shortcal_timer = timestamp;
   common->ani.resetcal_timer = timestamp;
  }
 } else {
  if ((timestamp - common->ani.resetcal_timer) >=
      ATH_RESTART_CALINTERVAL) {
   common->ani.caldone = ath9k_hw_reset_calvalid(ah);
   if (common->ani.caldone)
    common->ani.resetcal_timer = timestamp;
  }
 }


 if (sc->sc_ah->config.enable_ani
     && (timestamp - common->ani.checkani_timer) >=
     ah->config.ani_poll_interval) {
  aniflag = 1;
  common->ani.checkani_timer = timestamp;
 }


 if (aniflag) {
  spin_lock_irqsave(&common->cc_lock, flags);
  ath9k_hw_ani_monitor(ah, ah->curchan);
  ath_update_survey_stats(sc);
  spin_unlock_irqrestore(&common->cc_lock, flags);
 }


 if (longcal || shortcal) {
  common->ani.caldone =
   ath9k_hw_calibrate(ah, ah->curchan,
        ah->rxchainmask, longcal);
 }

 ath_dbg(common, ANI,
  "Calibration @%lu finished: %s %s %s, caldone: %s\n",
  jiffies,
  longcal ? "long" : "", shortcal ? "short" : "",
  aniflag ? "ani" : "", common->ani.caldone ? "true" : "false");

 ath9k_debug_samp_bb_mac(sc);
 ath9k_ps_restore(sc);

set_timer:





 cal_interval = ATH_LONG_CALINTERVAL;
 if (sc->sc_ah->config.enable_ani)
  cal_interval = min(cal_interval,
       (u32)ah->config.ani_poll_interval);
 if (!common->ani.caldone)
  cal_interval = min(cal_interval, (u32)short_cal_interval);

 mod_timer(&common->ani.timer, jiffies + msecs_to_jiffies(cal_interval));

 if (ar9003_is_paprd_enabled(ah) && ah->caldata) {
  if (!ah->caldata->paprd_done) {
   ieee80211_queue_work(sc->hw, &sc->paprd_work);
  } else if (!ah->paprd_table_write_done) {
   ath9k_ps_wakeup(sc);
   ath_paprd_activate(sc);
   ath9k_ps_restore(sc);
  }
 }
}
