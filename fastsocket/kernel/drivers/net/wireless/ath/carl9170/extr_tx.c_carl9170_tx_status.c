
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ar9170 {int tx_ack_failures; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_STAT_ACK ;
 int carl9170_tx_accounting_free (struct ar9170*,struct sk_buff*) ;
 int carl9170_tx_bar_status (struct ar9170*,struct sk_buff*,struct ieee80211_tx_info*) ;
 int carl9170_tx_ps_unblock (struct ar9170*,struct sk_buff*) ;
 int carl9170_tx_put_skb (struct sk_buff*) ;
 int carl9170_tx_status_process_ampdu (struct ar9170*,struct sk_buff*,struct ieee80211_tx_info*) ;

void carl9170_tx_status(struct ar9170 *ar, struct sk_buff *skb,
   const bool success)
{
 struct ieee80211_tx_info *txinfo;

 carl9170_tx_accounting_free(ar, skb);

 txinfo = IEEE80211_SKB_CB(skb);

 carl9170_tx_bar_status(ar, skb, txinfo);

 if (success)
  txinfo->flags |= IEEE80211_TX_STAT_ACK;
 else
  ar->tx_ack_failures++;

 if (txinfo->flags & IEEE80211_TX_CTL_AMPDU)
  carl9170_tx_status_process_ampdu(ar, skb, txinfo);

 carl9170_tx_ps_unblock(ar, skb);
 carl9170_tx_put_skb(skb);
}
