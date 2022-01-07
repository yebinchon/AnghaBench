
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int mutex; } ;


 int ath9k_htc_add_station (struct ath9k_htc_priv*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int ath9k_htc_init_rate (struct ath9k_htc_priv*,struct ieee80211_sta*) ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_htc_sta_add(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_sta *sta)
{
 struct ath9k_htc_priv *priv = hw->priv;
 int ret;

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);
 ret = ath9k_htc_add_station(priv, vif, sta);
 if (!ret)
  ath9k_htc_init_rate(priv, sta);
 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);

 return ret;
}
