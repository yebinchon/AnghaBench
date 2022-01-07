
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int mutex; int ah; } ;


 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_hw_settsf64 (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_htc_set_tsf(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif, u64 tsf)
{
 struct ath9k_htc_priv *priv = hw->priv;

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);
 ath9k_hw_settsf64(priv->ah, tsf);
 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);
}
