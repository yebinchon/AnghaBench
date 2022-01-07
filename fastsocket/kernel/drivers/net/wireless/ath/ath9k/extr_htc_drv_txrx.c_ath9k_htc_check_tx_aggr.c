
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
struct ath9k_htc_sta {int * tid_state; } ;
struct TYPE_4__ {int tx_lock; } ;
struct ath9k_htc_priv {TYPE_2__ tx; TYPE_1__* hw; } ;
typedef int __le16 ;
struct TYPE_3__ {int conf; } ;


 int AGGR_PROGRESS ;
 int ETH_P_PAE ;
 scalar_t__ __ath9k_htc_check_tx_aggr (struct ath9k_htc_priv*,struct ath9k_htc_sta*,int) ;
 scalar_t__ conf_is_ht (int *) ;
 scalar_t__ cpu_to_be16 (int ) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_start_tx_ba_session (struct ieee80211_sta*,int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath9k_htc_check_tx_aggr(struct ath9k_htc_priv *priv,
        struct ieee80211_vif *vif,
        struct sk_buff *skb)
{
 struct ieee80211_sta *sta;
 struct ieee80211_hdr *hdr;
 __le16 fc;

 hdr = (struct ieee80211_hdr *) skb->data;
 fc = hdr->frame_control;

 rcu_read_lock();

 sta = ieee80211_find_sta(vif, hdr->addr1);
 if (!sta) {
  rcu_read_unlock();
  return;
 }

 if (sta && conf_is_ht(&priv->hw->conf) &&
     !(skb->protocol == cpu_to_be16(ETH_P_PAE))) {
  if (ieee80211_is_data_qos(fc)) {
   u8 *qc, tid;
   struct ath9k_htc_sta *ista;

   qc = ieee80211_get_qos_ctl(hdr);
   tid = qc[0] & 0xf;
   ista = (struct ath9k_htc_sta *)sta->drv_priv;
   if (__ath9k_htc_check_tx_aggr(priv, ista, tid)) {
    ieee80211_start_tx_ba_session(sta, tid, 0);
    spin_lock_bh(&priv->tx.tx_lock);
    ista->tid_state[tid] = AGGR_PROGRESS;
    spin_unlock_bh(&priv->tx.tx_lock);
   }
  }
 }

 rcu_read_unlock();
}
