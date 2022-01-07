
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ar9170 {int usb_tasklet; int tx_ampdu_upload; int tx_total_pending; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int atomic_dec (int *) ;
 scalar_t__ carl9170_tx_put_skb (struct sk_buff*) ;
 int tasklet_hi_schedule (int *) ;

void carl9170_tx_callback(struct ar9170 *ar, struct sk_buff *skb)
{
 struct ieee80211_tx_info *txinfo = IEEE80211_SKB_CB(skb);

 atomic_dec(&ar->tx_total_pending);

 if (txinfo->flags & IEEE80211_TX_CTL_AMPDU)
  atomic_dec(&ar->tx_ampdu_upload);

 if (carl9170_tx_put_skb(skb))
  tasklet_hi_schedule(&ar->usb_tasklet);
}
