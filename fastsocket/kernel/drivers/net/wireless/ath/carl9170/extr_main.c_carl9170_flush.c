
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ar9170 {int tx_flush; int tx_total_queued; int tx_ampdu_upload; int * tx_pending; TYPE_1__* hw; } ;
struct TYPE_2__ {int queues; } ;


 int HZ ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int carl9170_tx_status (struct ar9170*,struct sk_buff*,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void carl9170_flush(struct ar9170 *ar, bool drop_queued)
{
 if (drop_queued) {
  int i;






  for (i = 0; i < ar->hw->queues; i++) {
   struct sk_buff *skb;

   while ((skb = skb_dequeue(&ar->tx_pending[i]))) {
    struct ieee80211_tx_info *info;

    info = IEEE80211_SKB_CB(skb);
    if (info->flags & IEEE80211_TX_CTL_AMPDU)
     atomic_dec(&ar->tx_ampdu_upload);

    carl9170_tx_status(ar, skb, 0);
   }
  }
 }


 if (atomic_read(&ar->tx_total_queued))
  WARN_ON(wait_for_completion_timeout(&ar->tx_flush, HZ) == 0);
}
