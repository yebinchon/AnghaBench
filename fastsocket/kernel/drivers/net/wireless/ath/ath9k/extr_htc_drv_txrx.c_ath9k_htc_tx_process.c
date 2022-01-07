
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_rate {int count; int idx; int flags; } ;
struct TYPE_11__ {struct ieee80211_tx_rate* rates; } ;
struct TYPE_7__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {int flags; TYPE_5__ status; TYPE_1__ control; } ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct ieee80211_conf {TYPE_3__ chandef; } ;
struct ath9k_htc_tx_ctl {int txok; } ;
struct TYPE_10__ {scalar_t__ queued_cnt; int tx_lock; } ;
struct ath9k_htc_priv {TYPE_6__* hw; TYPE_4__ tx; } ;
struct __wmi_event_txstatus {int ts_flags; int ts_rate; } ;
struct TYPE_12__ {struct ieee80211_conf conf; } ;
struct TYPE_8__ {scalar_t__ band; } ;


 int ATH9K_HTC_TXSTAT_ACK ;
 int ATH9K_HTC_TXSTAT_CW40 ;
 int ATH9K_HTC_TXSTAT_FILT ;
 int ATH9K_HTC_TXSTAT_MCS ;
 int ATH9K_HTC_TXSTAT_RATE ;
 int ATH9K_HTC_TXSTAT_RTC_CTS ;
 int ATH9K_HTC_TXSTAT_SGI ;
 struct ath9k_htc_tx_ctl* HTC_SKB_CB (struct sk_buff*) ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_TX_FILTERED ;
 int MS (int ,int ) ;
 scalar_t__ WARN_ON (int) ;
 int ath9k_htc_check_tx_aggr (struct ath9k_htc_priv*,struct ieee80211_vif*,struct sk_buff*) ;
 int ath9k_htc_tx_clear_slot (struct ath9k_htc_priv*,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int ieee80211_tx_status (TYPE_6__*,struct sk_buff*) ;
 int memmove (int ,int ,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strip_drv_header (struct ath9k_htc_priv*,struct sk_buff*) ;

__attribute__((used)) static void ath9k_htc_tx_process(struct ath9k_htc_priv *priv,
     struct sk_buff *skb,
     struct __wmi_event_txstatus *txs)
{
 struct ieee80211_vif *vif;
 struct ath9k_htc_tx_ctl *tx_ctl;
 struct ieee80211_tx_info *tx_info;
 struct ieee80211_tx_rate *rate;
 struct ieee80211_conf *cur_conf = &priv->hw->conf;
 bool txok;
 int slot;
 int hdrlen, padsize;

 slot = strip_drv_header(priv, skb);
 if (slot < 0) {
  dev_kfree_skb_any(skb);
  return;
 }

 tx_ctl = HTC_SKB_CB(skb);
 txok = tx_ctl->txok;
 tx_info = IEEE80211_SKB_CB(skb);
 vif = tx_info->control.vif;
 rate = &tx_info->status.rates[0];

 memset(&tx_info->status, 0, sizeof(tx_info->status));





 if (!txok || !vif || !txs)
  goto send_mac80211;

 if (txs->ts_flags & ATH9K_HTC_TXSTAT_ACK)
  tx_info->flags |= IEEE80211_TX_STAT_ACK;

 if (txs->ts_flags & ATH9K_HTC_TXSTAT_FILT)
  tx_info->flags |= IEEE80211_TX_STAT_TX_FILTERED;

 if (txs->ts_flags & ATH9K_HTC_TXSTAT_RTC_CTS)
  rate->flags |= IEEE80211_TX_RC_USE_RTS_CTS;

 rate->count = 1;
 rate->idx = MS(txs->ts_rate, ATH9K_HTC_TXSTAT_RATE);

 if (txs->ts_flags & ATH9K_HTC_TXSTAT_MCS) {
  rate->flags |= IEEE80211_TX_RC_MCS;

  if (txs->ts_flags & ATH9K_HTC_TXSTAT_CW40)
   rate->flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;
  if (txs->ts_flags & ATH9K_HTC_TXSTAT_SGI)
   rate->flags |= IEEE80211_TX_RC_SHORT_GI;
 } else {
  if (cur_conf->chandef.chan->band == IEEE80211_BAND_5GHZ)
   rate->idx += 4;
 }

 ath9k_htc_check_tx_aggr(priv, vif, skb);

send_mac80211:
 spin_lock_bh(&priv->tx.tx_lock);
 if (WARN_ON(--priv->tx.queued_cnt < 0))
  priv->tx.queued_cnt = 0;
 spin_unlock_bh(&priv->tx.tx_lock);

 ath9k_htc_tx_clear_slot(priv, slot);


 hdrlen = ieee80211_get_hdrlen_from_skb(skb);

 padsize = hdrlen & 3;
 if (padsize && skb->len > hdrlen + padsize) {
  memmove(skb->data + padsize, skb->data, hdrlen);
  skb_pull(skb, padsize);
 }


 ieee80211_tx_status(priv->hw, skb);
}
