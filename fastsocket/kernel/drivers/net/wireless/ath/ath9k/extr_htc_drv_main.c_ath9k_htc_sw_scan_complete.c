
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int mutex; int beacon_lock; int op_flags; } ;


 int OP_SCANNING ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_vif_reconfig (struct ath9k_htc_priv*) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath9k_htc_sw_scan_complete(struct ieee80211_hw *hw)
{
 struct ath9k_htc_priv *priv = hw->priv;

 mutex_lock(&priv->mutex);
 spin_lock_bh(&priv->beacon_lock);
 clear_bit(OP_SCANNING, &priv->op_flags);
 spin_unlock_bh(&priv->beacon_lock);
 ath9k_htc_ps_wakeup(priv);
 ath9k_htc_vif_reconfig(priv);
 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);
}
