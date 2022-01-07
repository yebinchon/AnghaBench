
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {unsigned int rxfilter; int mutex; int ah; int op_flags; } ;


 int ANY ;
 int CONFIG ;
 int OP_INVALID ;
 unsigned int SUPPORTED_FILTERS ;
 int ath9k_htc_calcrxfilter (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_hw_common (int ) ;
 int ath9k_hw_setrxfilter (int ,int ) ;
 int ath_dbg (int ,int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_htc_configure_filter(struct ieee80211_hw *hw,
           unsigned int changed_flags,
           unsigned int *total_flags,
           u64 multicast)
{
 struct ath9k_htc_priv *priv = hw->priv;
 u32 rfilt;

 mutex_lock(&priv->mutex);
 changed_flags &= SUPPORTED_FILTERS;
 *total_flags &= SUPPORTED_FILTERS;

 if (test_bit(OP_INVALID, &priv->op_flags)) {
  ath_dbg(ath9k_hw_common(priv->ah), ANY,
   "Unable to configure filter on invalid state\n");
  mutex_unlock(&priv->mutex);
  return;
 }
 ath9k_htc_ps_wakeup(priv);

 priv->rxfilter = *total_flags;
 rfilt = ath9k_htc_calcrxfilter(priv);
 ath9k_hw_setrxfilter(priv->ah, rfilt);

 ath_dbg(ath9k_hw_common(priv->ah), CONFIG, "Set HW RX filter: 0x%x\n",
  rfilt);

 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);
}
