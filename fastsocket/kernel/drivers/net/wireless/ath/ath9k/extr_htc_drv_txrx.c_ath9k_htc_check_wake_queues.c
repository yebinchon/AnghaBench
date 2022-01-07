
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ queued_cnt; int flags; int tx_lock; } ;
struct ath9k_htc_priv {TYPE_1__ tx; int hw; } ;


 int ATH9K_HTC_OP_TX_QUEUES_STOP ;
 scalar_t__ ATH9K_HTC_TX_THRESHOLD ;
 int ieee80211_wake_queues (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath9k_htc_check_wake_queues(struct ath9k_htc_priv *priv)
{
 spin_lock_bh(&priv->tx.tx_lock);
 if ((priv->tx.queued_cnt < ATH9K_HTC_TX_THRESHOLD) &&
     (priv->tx.flags & ATH9K_HTC_OP_TX_QUEUES_STOP)) {
  priv->tx.flags &= ~ATH9K_HTC_OP_TX_QUEUES_STOP;
  ieee80211_wake_queues(priv->hw);
 }
 spin_unlock_bh(&priv->tx.tx_lock);
}
