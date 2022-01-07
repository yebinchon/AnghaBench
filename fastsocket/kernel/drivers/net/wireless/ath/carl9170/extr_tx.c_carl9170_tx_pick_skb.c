
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;
struct carl9170_tx_info {int timeout; } ;
struct ar9170 {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 scalar_t__ carl9170_alloc_dev_space (struct ar9170*,struct sk_buff*) ;
 int jiffies ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *carl9170_tx_pick_skb(struct ar9170 *ar,
         struct sk_buff_head *queue)
{
 struct sk_buff *skb;
 struct ieee80211_tx_info *info;
 struct carl9170_tx_info *arinfo;

 BUILD_BUG_ON(sizeof(*arinfo) > sizeof(info->rate_driver_data));

 spin_lock_bh(&queue->lock);
 skb = skb_peek(queue);
 if (unlikely(!skb))
  goto err_unlock;

 if (carl9170_alloc_dev_space(ar, skb))
  goto err_unlock;

 __skb_unlink(skb, queue);
 spin_unlock_bh(&queue->lock);

 info = IEEE80211_SKB_CB(skb);
 arinfo = (void *) info->rate_driver_data;

 arinfo->timeout = jiffies;
 return skb;

err_unlock:
 spin_unlock_bh(&queue->lock);
 return ((void*)0);
}
