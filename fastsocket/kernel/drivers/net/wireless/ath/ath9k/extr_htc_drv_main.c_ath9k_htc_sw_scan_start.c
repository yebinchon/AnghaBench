
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int mutex; int ps_work; int beacon_lock; int op_flags; } ;


 int OP_SCANNING ;
 int ath9k_htc_stop_ani (struct ath9k_htc_priv*) ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath9k_htc_sw_scan_start(struct ieee80211_hw *hw)
{
 struct ath9k_htc_priv *priv = hw->priv;

 mutex_lock(&priv->mutex);
 spin_lock_bh(&priv->beacon_lock);
 set_bit(OP_SCANNING, &priv->op_flags);
 spin_unlock_bh(&priv->beacon_lock);
 cancel_work_sync(&priv->ps_work);
 ath9k_htc_stop_ani(priv);
 mutex_unlock(&priv->mutex);
}
