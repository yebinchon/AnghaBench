
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ar9170 {int tx_stats_lock; int * queue_stop_timeout; TYPE_2__* hw; TYPE_1__* tx_stats; int tx_total_queued; } ;
struct TYPE_4__ {int queues; } ;
struct TYPE_3__ {scalar_t__ len; scalar_t__ limit; int count; } ;


 int atomic_inc (int *) ;
 int ieee80211_stop_queue (TYPE_2__*,int) ;
 int is_mem_full (struct ar9170*) ;
 int jiffies ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void carl9170_tx_accounting(struct ar9170 *ar, struct sk_buff *skb)
{
 int queue, i;
 bool mem_full;

 atomic_inc(&ar->tx_total_queued);

 queue = skb_get_queue_mapping(skb);
 spin_lock_bh(&ar->tx_stats_lock);







 ar->tx_stats[queue].len++;
 ar->tx_stats[queue].count++;

 mem_full = is_mem_full(ar);
 for (i = 0; i < ar->hw->queues; i++) {
  if (mem_full || ar->tx_stats[i].len >= ar->tx_stats[i].limit) {
   ieee80211_stop_queue(ar->hw, i);
   ar->queue_stop_timeout[i] = jiffies;
  }
 }

 spin_unlock_bh(&ar->tx_stats_lock);
}
