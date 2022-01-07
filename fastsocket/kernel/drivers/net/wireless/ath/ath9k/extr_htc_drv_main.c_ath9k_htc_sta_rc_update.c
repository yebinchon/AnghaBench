
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_target_rate {int capflags; } ;
struct ath9k_htc_priv {int mutex; int ah; } ;


 int CONFIG ;
 int IEEE80211_RC_SUPP_RATES_CHANGED ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_send_rate_cmd (struct ath9k_htc_priv*,struct ath9k_htc_target_rate*) ;
 int ath9k_htc_setup_rate (struct ath9k_htc_priv*,struct ieee80211_sta*,struct ath9k_htc_target_rate*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,...) ;
 int be32_to_cpu (int ) ;
 int memset (struct ath9k_htc_target_rate*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_htc_sta_rc_update(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_sta *sta, u32 changed)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_rate trate;

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);

 if (changed & IEEE80211_RC_SUPP_RATES_CHANGED) {
  memset(&trate, 0, sizeof(struct ath9k_htc_target_rate));
  ath9k_htc_setup_rate(priv, sta, &trate);
  if (!ath9k_htc_send_rate_cmd(priv, &trate))
   ath_dbg(common, CONFIG,
    "Supported rates for sta: %pM updated, rate caps: 0x%X\n",
    sta->addr, be32_to_cpu(trate.capflags));
  else
   ath_dbg(common, CONFIG,
    "Unable to update supported rates for sta: %pM\n",
    sta->addr);
 }

 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);
}
