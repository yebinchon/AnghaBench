
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct survey_info {int dummy; } ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {int flags; int power_level; scalar_t__ radar_enabled; TYPE_3__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath_softc* priv; } ;
struct ieee80211_channel {int hw_value; int center_freq; } ;
struct TYPE_4__ {int txpowlimit; } ;
struct ath_softc {int ps_idle; scalar_t__ spectral_mode; int mutex; int curtxpow; TYPE_1__ config; scalar_t__ scanning; struct ath_hw* sc_ah; TYPE_2__* survey; TYPE_2__* cur_survey; int sc_pm_lock; } ;
struct ath_hw {int chip_fullsleep; int is_monitoring; int * channels; int * curchan; } ;
struct ath_common {int cc_lock; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
struct TYPE_5__ {int filled; } ;


 int ATH9K_RX_FILTER_PHYERR ;
 int ATH9K_RX_FILTER_PHYRADAR ;
 int CONFIG ;
 int DFS ;
 int EINVAL ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_CHANGE_MONITOR ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_IDLE ;
 int IEEE80211_CONF_MONITOR ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int IEEE80211_CONF_PS ;
 scalar_t__ SPECTRAL_CHANSCAN ;
 int SURVEY_INFO_IN_USE ;
 int ath9k_cmn_update_ichannel (int *,struct ieee80211_channel*,int) ;
 int ath9k_cmn_update_txpow (struct ath_hw*,int ,int,int *) ;
 int ath9k_disable_ps (struct ath_softc*) ;
 int ath9k_enable_ps (struct ath_softc*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_getrxfilter (struct ath_hw*) ;
 int ath9k_hw_set_radar_params (struct ath_hw*) ;
 int ath9k_hw_setrxfilter (struct ath_hw*,int) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_spectral_scan_trigger (struct ieee80211_hw*) ;
 int ath9k_start_btcoex (struct ath_softc*) ;
 int ath9k_stop_btcoex (struct ath_softc*) ;
 int ath_cancel_work (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_err (struct ath_common*,char*) ;
 scalar_t__ ath_set_channel (struct ath_softc*,struct ieee80211_hw*,int *) ;
 int ath_update_survey_nf (struct ath_softc*,int) ;
 int ath_update_survey_stats (struct ath_softc*) ;
 int cfg80211_get_chandef_type (TYPE_3__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ath9k_config(struct ieee80211_hw *hw, u32 changed)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_conf *conf = &hw->conf;
 bool reset_channel = 0;

 ath9k_ps_wakeup(sc);
 mutex_lock(&sc->mutex);

 if (changed & IEEE80211_CONF_CHANGE_IDLE) {
  sc->ps_idle = !!(conf->flags & IEEE80211_CONF_IDLE);
  if (sc->ps_idle) {
   ath_cancel_work(sc);
   ath9k_stop_btcoex(sc);
  } else {
   ath9k_start_btcoex(sc);




   reset_channel = ah->chip_fullsleep;
  }
 }







 if (changed & IEEE80211_CONF_CHANGE_PS) {
  unsigned long flags;
  spin_lock_irqsave(&sc->sc_pm_lock, flags);
  if (conf->flags & IEEE80211_CONF_PS)
   ath9k_enable_ps(sc);
  else
   ath9k_disable_ps(sc);
  spin_unlock_irqrestore(&sc->sc_pm_lock, flags);
 }

 if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
  if (conf->flags & IEEE80211_CONF_MONITOR) {
   ath_dbg(common, CONFIG, "Monitor mode is enabled\n");
   sc->sc_ah->is_monitoring = 1;
  } else {
   ath_dbg(common, CONFIG, "Monitor mode is disabled\n");
   sc->sc_ah->is_monitoring = 0;
  }
 }

 if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) || reset_channel) {
  struct ieee80211_channel *curchan = hw->conf.chandef.chan;
  enum nl80211_channel_type channel_type =
   cfg80211_get_chandef_type(&conf->chandef);
  int pos = curchan->hw_value;
  int old_pos = -1;
  unsigned long flags;

  if (ah->curchan)
   old_pos = ah->curchan - &ah->channels[0];

  ath_dbg(common, CONFIG, "Set channel: %d MHz type: %d\n",
   curchan->center_freq, channel_type);


  spin_lock_irqsave(&common->cc_lock, flags);
  ath_update_survey_stats(sc);
  spin_unlock_irqrestore(&common->cc_lock, flags);

  ath9k_cmn_update_ichannel(&sc->sc_ah->channels[pos],
       curchan, channel_type);







  if (!(hw->conf.flags & IEEE80211_CONF_OFFCHANNEL) &&
      sc->cur_survey != &sc->survey[pos]) {

   if (sc->cur_survey)
    sc->cur_survey->filled &= ~SURVEY_INFO_IN_USE;

   sc->cur_survey = &sc->survey[pos];

   memset(sc->cur_survey, 0, sizeof(struct survey_info));
   sc->cur_survey->filled |= SURVEY_INFO_IN_USE;
  } else if (!(sc->survey[pos].filled & SURVEY_INFO_IN_USE)) {
   memset(&sc->survey[pos], 0, sizeof(struct survey_info));
  }

  if (ath_set_channel(sc, hw, &sc->sc_ah->channels[pos]) < 0) {
   ath_err(common, "Unable to set channel\n");
   mutex_unlock(&sc->mutex);
   ath9k_ps_restore(sc);
   return -EINVAL;
  }






  if (old_pos >= 0)
   ath_update_survey_nf(sc, old_pos);





  if (hw->conf.radar_enabled) {
   u32 rxfilter;


   ath9k_hw_set_radar_params(ah);
   rxfilter = ath9k_hw_getrxfilter(ah);
   rxfilter |= ATH9K_RX_FILTER_PHYRADAR |
        ATH9K_RX_FILTER_PHYERR;
   ath9k_hw_setrxfilter(ah, rxfilter);
   ath_dbg(common, DFS, "DFS enabled at freq %d\n",
    curchan->center_freq);
  } else {

   if (sc->scanning &&
       sc->spectral_mode == SPECTRAL_CHANSCAN)
    ath9k_spectral_scan_trigger(hw);
  }
 }

 if (changed & IEEE80211_CONF_CHANGE_POWER) {
  ath_dbg(common, CONFIG, "Set power: %d\n", conf->power_level);
  sc->config.txpowlimit = 2 * conf->power_level;
  ath9k_cmn_update_txpow(ah, sc->curtxpow,
           sc->config.txpowlimit, &sc->curtxpow);
 }

 mutex_unlock(&sc->mutex);
 ath9k_ps_restore(sc);

 return 0;
}
