
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct p54_tx_queue_stats {scalar_t__ len; scalar_t__ limit; int count; } ;
struct p54_common {int tx_stats_lock; int hw; struct p54_tx_queue_stats* tx_stats; } ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__ IS_QOS_QUEUE (size_t const) ;
 size_t P54_QUEUE_DATA ;
 size_t const P54_QUEUE_NUM ;
 scalar_t__ WARN_ON (int) ;
 int ieee80211_stop_queue (int ,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int p54_tx_qos_accounting_alloc(struct p54_common *priv,
           struct sk_buff *skb,
           const u16 p54_queue)
{
 struct p54_tx_queue_stats *queue;
 unsigned long flags;

 if (WARN_ON(p54_queue >= P54_QUEUE_NUM))
  return -EINVAL;

 queue = &priv->tx_stats[p54_queue];

 spin_lock_irqsave(&priv->tx_stats_lock, flags);
 if (unlikely(queue->len >= queue->limit && IS_QOS_QUEUE(p54_queue))) {
  spin_unlock_irqrestore(&priv->tx_stats_lock, flags);
  return -ENOSPC;
 }

 queue->len++;
 queue->count++;

 if (unlikely(queue->len == queue->limit && IS_QOS_QUEUE(p54_queue))) {
  u16 ac_queue = p54_queue - P54_QUEUE_DATA;
  ieee80211_stop_queue(priv->hw, ac_queue);
 }

 spin_unlock_irqrestore(&priv->tx_stats_lock, flags);
 return 0;
}
